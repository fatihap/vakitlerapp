import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  static String languageCode = 'tr';

  static Future<void> initialize() async {
    languageCode = await _getLanguageCode();
  }

  static Future<String> _getLanguageCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('selectedLanguage') ?? 'tr';
  }

  static String get prayerTimesUrl =>
      'https://www.turktakvim.com/XMLservis.php?tip=vakit&cityID&dil=$languageCode';

  static const String takvimUrl =
      'https://www.turktakvim.com/XMLservis.v2.php?tip=takvim&tarih';

  static const String sehirAramaUrl =
      'https://www.turktakvim.com/XMLservis.php?tip=arama&SearchName=';

  static const String ulkeSecimUrl =
      'http://www.turktakvim.com/XMLservis.php?tip=ulke';
  static const String selectCityUrl =
      'https://www.turktakvim.com/XMLservis.php?tip=eyalet&countryID';

  static const String regionSelectUrl =
      'https://www.turktakvim.com/XMLservis.php?tip=sehir&countryID=200&cityStateFilter=';

  static Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static getDescription(String prayerTimeName) {
    switch (prayerTimeName) {
      case 'imsak':
        return 'imsak_def'.tr;
      case 'sabah':
        return 'sabah_def'.tr;
      case 'gunes':
        return 'gunes_def'.tr;
      case 'israk':
        return 'israk_def'.tr;
      case 'dahve':
        return 'dahve_def'.tr;
      case 'kerahet':
        return 'kerahet_def'.tr;
      case 'ogle':  
        return 'ogle_def'.tr;
      case 'ikindi':
        return 'ikindi_def'.tr;
      case 'asrisani':
        return 'asrisani_def'.tr;
      case 'aksam':
        return 'aksam_def'.tr;
      case 'yatsi':
        return 'yatsı_def'.tr;
      case 'isaisani':
        return 'isaisani_def'.tr;
      case 'geceyarisi':
        return 'gece_yarisi_def'.tr;
      case 'teheccud':
        return 'teheccud_def'.tr;
      case 'seher':
        return 'seher_def'.tr;
      case 'kible':
        return 'kible_def'.tr;
      case 'isfirar':
        return 'isfirar_def'.tr;
      case 'istibak':
        return 'istibak_def'.tr;
      default:
        return 'Bilgi bulunamadı';
    }
  }

  static int getIndexFromLabel(String label) {
    switch (label) {
      case 'imsak':
        return 0;
      case 'sabah':
        return 1;
      case 'gunes':
        return 2;
      case 'israk':
        return 3;
      case 'dahve':
        return 4;
      case 'kerahet':
        return 5;
      case 'ogle':
        return 6;
      case 'ikindi':
        return 7;
      case 'asrisani':
        return 8;
      case 'isfirar':
        return 9;
      case 'aksam':
        return 10;
      case 'istibak':
        return 11;
      case 'yatsi':
        return 12;
      case 'isaisani':
        return 13;
      case 'geceyarisi':
        return 14;
      case 'teheccud':
        return 15;
      case 'seher':
        return 16;
      case 'kible':
        return 17;
      default:
        return -1;
    }
  }
}
