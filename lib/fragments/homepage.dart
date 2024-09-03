import 'package:flutter/material.dart';

import '../widgets/homepageWidgets/appbar_widget.dart';
import '../widgets/homepageWidgets/drawer_widget.dart';
import 'calendar_page.dart';
import 'importants_links_page.dart';
import 'location.dart';
import 'prayerTimes.dart';

class MainPage extends StatefulWidget {
  final String selectedCityId;
  final String selectedCityName;

  const MainPage({
    super.key,
    required this.selectedCityId,
    required this.selectedCityName,
  });

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  late List<Widget> fragmentOptions;
  String selectedLocationName = '';

  @override
  void initState() {
    super.initState();
    selectedLocationName = widget.selectedCityName;
    updateFragmentOptions();
  }

  void updateFragmentOptions() {
    fragmentOptions = <Widget>[
      PrayTimes(
        selectedCityId: widget.selectedCityId,
        selectedCityName: widget.selectedCityName,
        isFirstTouch: false,
      ),
      const TakvimPage(),
      LocationWidget(
        defaultCityId: widget.selectedCityId,
        defaultCityName: widget.selectedCityName,
        isFirstTouch: false,
        
      ),
      const ImportantLinksPage(),
    ];
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onLocationPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationWidget(
          defaultCityId: widget.selectedCityId,
          isFirstTouch: false,
          defaultCityName: widget.selectedCityName,
        ),
      ),
    ).then((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        selectedLocationName: selectedLocationName,
        onLocationPressed: onLocationPressed,
        onItemTapped: onItemTapped,
      ),
      drawer: CustomDrawer(
        selectedLocationName: selectedLocationName,
        onLocationPressed: onLocationPressed,
        onItemTapped: onItemTapped,
        selectedIndex: selectedIndex,
      ),
      body: Center(
        child: fragmentOptions.elementAt(selectedIndex),
      ),
    );
  }
}
