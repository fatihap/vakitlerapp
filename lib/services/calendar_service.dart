import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml.dart';

import '../classes/functions.dart';

class CalendarService {
  static String languageCode = 'tr';
  String locale = Get.locale?.languageCode ?? 'tr';
  static Future<void> initialize() async {
    languageCode = await _getLanguageCode();
  }

  static Future<String> _getLanguageCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('selectedLanguage') ?? 'tr';
  }

  static Future<void> updateLanguageCode(String newLanguageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String oldLanguageCode = prefs.getString('selectedLanguage') ?? 'tr';

    if (newLanguageCode != oldLanguageCode) {
      languageCode = newLanguageCode;
      await prefs.setString('selectedLanguage', newLanguageCode);
      await _downloadTakvimDataForAllYears();
    }
  }

  static Future<Map<String, String>> fetchTakvim(DateTime date) async {
    await initialize();

    final currentYear = '${date.year}';
    final localPath = await _localPath;
    final fileName = 'takvim_${currentYear}_$languageCode.xml';
    final localFile = File('$localPath/$fileName');
    Map<String, String> takvimData = {};

    if (await _hasInternetConnection() || await localFile.exists()) {
      if (await _hasInternetConnection() && !await localFile.exists()) {
        await _downloadTakvimData(date.year);
      }

      if (await localFile.exists()) {
        final document = XmlDocument.parse(await localFile.readAsString());
        final veriList = document.findAllElements('Veri');

        for (var veri in veriList) {
          final tarih = DateTime.parse(
              veri.findElements('miladi_tarih').single.text.trim());

          if (tarih.year == date.year &&
              tarih.month == date.month &&
              tarih.day == date.day) {
            takvimData = {
              'miladiTarih':
                  veri.findElements('miladi_tarih').single.text.trim(),
              'hicriTarih': veri.findElements('hicri_tarih').single.text.trim(),
              'hicriSemsi': veri.findElements('hicri_semsi').single.text.trim(),
              'rumi': veri.findElements('rumi').single.text.trim(),
              'hizirKasim': veri.findElements('hizir_kasim').single.text.trim(),
              'gunDurumu': veri.findElements('gun_durumu').single.text.trim(),
              'ezaniDurum': veri.findElements('ezani_durum').single.text.trim(),
              'gununSozu': Functions.cleanHtmlTags(
                  veri.findElements('gunun_sozu').single.text.trim()),
              'gununOlayi': Functions.cleanHtmlTags(
                  veri.findElements('gunun_olayi').single.text.trim()),
              'isimYemek': Functions.cleanHtmlTags(
                  veri.findElements('isim_yemek').single.text.trim()),
            };
            final yazilar = veri.findElements('yazilar').first;
            final yazi = yazilar.findElements('yazi').first;
            takvimData['yazilarBaslik'] = Functions.cleanHtmlTags(
                yazi.findElements('baslik').single.text.trim());
            takvimData['yazilarMetin'] =
                yazi.findElements('metin').single.text;
                     

            break;
          }
        }
      }
    } else {
      throw Exception('No internet connection and data not available locally');
    }

    return takvimData;
  }

  static Future<void> _downloadTakvimData(int year) async {
    final startDate = DateTime(year, 1, 1);
    final endDate = DateTime(year, 12, 31);
    final startDateStr = startDate.toIso8601String().split('T').first;
    final endDateStr = endDate.toIso8601String().split('T').first;

    final url = Uri.parse(
        'https://www.turktakvim.com/XMLservis.v2.php?tip=takvim&baslangic=$startDateStr&bitis=$endDateStr&format=xml&dil=$languageCode');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final localPath = await _localPath;
      final fileName = 'takvim_${year}_$languageCode.xml';
      final localFile = File('$localPath/$fileName');
      await localFile.writeAsBytes(response.bodyBytes);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  static Future<void> _downloadTakvimDataForAllYears() async {
    final currentYear = DateTime.now().year;
    for (int year = currentYear - 10; year <= currentYear + 10; year++) {
      await _downloadTakvimData(year);
    }
  }

  static Future<bool> _hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
}
