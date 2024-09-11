import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:xml/xml.dart' as xml;

import '../classes/constants.dart';
import '../classes/functions.dart';
import '../classes/vakit.dart';

class PrayerService {
  static Future<File> downloadAndStorePrayerTimes(
      String cityID, File localFile) async {
    try {
      final url =  Constants.prayerTimesUrl;
      final response = await http.get(Uri.parse('$url&cityID=$cityID'));
      if (response.statusCode == 200) {
        return localFile.writeAsString(response.body);
      } else {
        throw Exception('Failed to download file');
      }
    } catch (e) {
      throw Exception('Error downloading file: $e');
    }
  }

  static Future<void> readPrayerTimes(File localFile, DateTime selectedDate,
      List<PrayerTime> prayerTimes) async {
    try {
      final contents = await localFile.readAsString();
      final document = xml.XmlDocument.parse(contents);
      final formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      final cityInfoElement = document.findAllElements('cityinfo').firstOrNull;

      if (cityInfoElement != null) {
        final prayerTimesElement =
            cityInfoElement.findElements('vakit').firstWhere(
                  (element) => element.getAttribute('tarih') == formattedDate,
                );

        final imsak = Functions.cleanText(
            prayerTimesElement.getElement('imsak')?.text ?? '');
        final sabah = Functions.cleanText(
            prayerTimesElement.getElement('sabah')?.text ?? '');
        final ogle = Functions.cleanText(
            prayerTimesElement.getElement('ogle')?.text ?? '');
        final ikindi = Functions.cleanText(
            prayerTimesElement.getElement('ikindi')?.text ?? '');
        final aksam = Functions.cleanText(
            prayerTimesElement.getElement('aksam')?.text ?? '');
        final yatsi = Functions.cleanText(
            prayerTimesElement.getElement('yatsi')?.text ?? '');
        final gunes = Functions.cleanText(
            prayerTimesElement.getElement('gunes')?.text ?? '');
        final israk = Functions.cleanText(
            prayerTimesElement.getElement('israk')?.text ?? '');
        final asrisani = Functions.cleanText(
            prayerTimesElement.getElement('asrisani')?.text ?? '');
        final isaisani = Functions.cleanText(
            prayerTimesElement.getElement('isaisani')?.text ?? '');
        final dahve = Functions.cleanText(
            prayerTimesElement.getElement('dahve')?.text ?? '');
 final isfirar = Functions.cleanText(
            prayerTimesElement.getElement('isfirar')?.text ?? '');
        final seher = Functions.cleanText(
            prayerTimesElement.getElement('seher')?.text ?? '');
        final teheccud = Functions.cleanText(
            prayerTimesElement.getElement('teheccud')?.text ?? '');
        final geceyarisi = Functions.cleanText(
            prayerTimesElement.getElement('geceyarisi')?.text ?? '');
        final istibak = Functions.cleanText(
            prayerTimesElement.getElement('istibak')?.text ?? '');
        final kerahet = Functions.cleanText(
            prayerTimesElement.getElement('kerahet')?.text ?? '');
        final kible = Functions.cleanText(
            prayerTimesElement.getElement('kible')?.text ?? '');
        prayerTimes.clear();
        prayerTimes.add(
          PrayerTime(
            date: formattedDate,
            imsak: imsak,
            sabah: sabah,
            ogle: ogle,
            ikindi: ikindi,
            aksam: aksam,
            yatsi: yatsi,
            asrisani: asrisani,
            isaisani: isaisani,
            isfirar: isfirar,
            istibak: istibak,
            seher: seher,
            teheccud: teheccud,
            gunes: gunes,
            kible: kible,
            kerahet: kerahet,
            geceyarisi: geceyarisi,
            israk: israk,
            dahve: dahve,
          ),
        );
      }
    } catch (e){}
  }

  static Future<void> readPrayerTimesFromFile(
      BuildContext context, String cityID, DateTime date,
      List<PrayerTime> prayerTimes, bool isLoading) async {
    try {
      final localFile = await _getLocalFile(cityID, date);

      if (await localFile.exists()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Veriler telefon hafızasından okunuyor')),
        );
        await readPrayerTimes(localFile, date, prayerTimes);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Veriler indiriliyor')),
        );
        await downloadAndStorePrayerTimes(cityID, localFile);
        await readPrayerTimes(localFile, date, prayerTimes);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Veriler okunurken bir hata meydana geldi $e')),
      );
    } finally {
      isLoading = false;
    }
  }

  static Future<File> _getLocalFile(String cityID, DateTime date) async {
    final fileName = '$cityID${date.year}.xml';
    final localPath = await Constants.localPath;
    return File('$localPath/$fileName');
  }
}
