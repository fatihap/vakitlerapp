// ignore_for_file: no_leading_underscores_for_local_identifiers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../fragments/langauge_selection.dart';
import '../../styles/textStyle.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.selectedLocationName,
    required this.onLocationPressed,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  final String selectedLocationName;
  final VoidCallback onLocationPressed;
  final void Function(int) onItemTapped;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    // Function to launch URLs
    Future<void> _launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 4, 36, 72),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'prayer_times'.tr,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                selectedLocationName,
                                style: TextStyles.buttonTextStyle.copyWith(
                                    color: Colors.white, fontSize: 28),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.location_on,
                                  color: Colors.white, size: 30),
                              onPressed: onLocationPressed,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white, // Background color for ListTile
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          'assets/images/prayTimes.png',
                          width: 24,
                          height: 24,
                        ),
                        title: Text('page_onyuz'.tr),
                        onTap: () {
                          onItemTapped(0);
                          Navigator.pop(context);
                        },
                        selected: selectedIndex == 0,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/takvim_arka.png',
                          width: 24,
                          height: 24,
                        ),
                        title: Text('page_arka'.tr),
                        onTap: () {
                          onItemTapped(1);
                          Navigator.pop(context);
                        },
                        selected: selectedIndex == 1,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/images/select_location.png',
                          width: 24,
                          height: 24,
                        ),
                        title: Text('location_selection'.tr),
                        onTap: () {
                          onItemTapped(2);
                          Navigator.pop(context);
                        },
                        selected: selectedIndex == 2,
                      ),
                      ListTile(
                        leading: const Icon(Icons.link),
                        title: Text('OnemliLinkler'.tr),
                        onTap: () {
                          onItemTapped(3);
                          Navigator.pop(context);
                        },
                        selected: selectedIndex == 3,
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.language),
                        title: Text('language_selection'.tr),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LanguageSelectionPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
       Container(
  color: Colors.white,
  padding: const EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Image.asset(
            'assets/images/ttlogo_renkli.png',
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 10),
          const Text(
            'Türkiye Takvimi',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
      const Divider(
        height: 20,
        thickness: 1,
        color: Colors.grey,
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          const Icon(
            Icons.email,
            color: Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: () {
                _launchURL('mailto:info@turktakvim.com');
              },
              child: RichText(
                text: TextSpan(
                  text:  '${'EPosta'.tr}: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children:const  [
                    TextSpan(
                      text: 'info@turktakvim.com',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          const Icon(
            Icons.language,
            color: Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: () {
                final languageCode = Get.locale?.languageCode ?? 'en';
                _launchURL(
                    'https://www.turktakvim.com/index.php?=dil=$languageCode');
              },
              child: RichText(
                text: TextSpan(
                  text: '${'website'.tr}: ',
                  style:const  TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children:const  [
                    TextSpan(
                      text: 'www.turktakvim.com',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),

       ],
      ),
    );
  }
}
