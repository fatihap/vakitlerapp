import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/calendar_service.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({Key? key}) : super(key: key);

  Future<void> _changeLanguage(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', languageCode);
    var locale = Locale(languageCode);
    Get.updateLocale(locale);

    await CalendarService.updateLanguageCode(languageCode);

    Phoenix.rebirth(Get.context!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('language_selection'.tr, style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildLanguageCard(
              context,
              languageCode: 'tr',
              languageName: 'Türkçe', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'en',
              languageName: 'English', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'bg',
              languageName: 'БЪЛГАРСКИ', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'bs',
              languageName: 'Bosanski', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'fa',
              languageName: 'فارسی', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'ar',
              languageName: 'العربية', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'kk',
              languageName: 'қазақша', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'pl',
              languageName: 'POLSKI', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'ro',
              languageName: 'ROMÂNĂ', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'ru',
              languageName: 'РУССКИЙ', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'sq',
              languageName: 'SHQIP', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'uz',
              languageName: 'ЎЗБЕКЧА', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'ky',
              languageName: 'Кыргыз тили', 
              icon: Icons.language,
            ),
            _buildLanguageCard(
              context,
              languageCode: 'tt',
              languageName: 'ТАТАРЧА', 
              icon: Icons.language,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageCard(
    BuildContext context, {
    required String languageCode,
    required String languageName,
    required IconData icon,
  }) {
    return Card(
      color: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 6,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        leading: Icon(icon, size: 40, color: Colors.white),
        title: Text(
          languageName,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
            color: Get.locale?.languageCode == languageCode
                ? Colors.orange
                : Colors.white,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        onTap: () {
          _changeLanguage(languageCode);
          Navigator.pop(context);
        },
        selected: Get.locale?.languageCode == languageCode,
      ),
    );
  }
}
