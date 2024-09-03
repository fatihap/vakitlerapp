import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'fragments/homepage.dart';
import 'langauge_package.dart';
import 'styles/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  initializeDateFormatting('tr_TR', null);

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstTouch = prefs.getBool('isFirstTouch') ?? true;

  String? savedCityId = prefs.getString('selectedCityId');
  String? savedCityName = prefs.getString('selectedCityName');
  String? savedLanguage = prefs.getString('selectedLanguage');

  if (savedLanguage != null) {
    var locale = Locale(savedLanguage);
    Get.updateLocale(locale);
    initializeDateFormatting(savedLanguage, null);
  }

  runApp(
    Phoenix(
      child: VakitlerApp(
        isFirstTouch: isFirstTouch,
        savedCityId: savedCityId,
        savedCityName: savedCityName,
      ),
    ),
  );
}

class VakitlerApp extends StatelessWidget {
  final bool isFirstTouch;
  final String? savedCityId;
  final String? savedCityName;

  const VakitlerApp({
    super.key,
    required this.isFirstTouch,
    required this.savedCityId,
    required this.savedCityName,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Namaz Vakitleri',
      translations: Dil(),
      locale: Get.locale ?? Get.deviceLocale,
      fallbackLocale: Dil.varsayilan,
      theme: appTheme,
      home: MainPage(
        selectedCityId: savedCityId ?? '16741',
        selectedCityName: savedCityName ?? 'İstanbul',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
