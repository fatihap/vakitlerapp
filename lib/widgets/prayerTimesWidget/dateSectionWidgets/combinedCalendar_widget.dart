import 'package:flutter/material.dart';

import 'calendarNavigationWidget.dart';
import '../dailySectionWidgets/gunDurumuWidget.dart';
import 'selectedCityAndIconWidget.dart';

class CombinedCalendarAndCitySelectionCard extends StatelessWidget {
  final DateTime selectedDate;
  final String hicriTarih;
  final String gunDurumu;
  final String ezaniDurum;
  final ValueChanged<DateTime> onDateChanged;
  final String selectedCityId;
  final String selectedCityName;

  const CombinedCalendarAndCitySelectionCard({
    super.key,
    required this.selectedDate,
    required this.hicriTarih,
    required this.gunDurumu,
    required this.ezaniDurum,
    required this.onDateChanged,
    required this.selectedCityId,
    required this.selectedCityName,
  });

  @override
  Widget build(BuildContext context) {
    List<String> hicriTarihParts = hicriTarih.split(' ');
    String hicriGun = hicriTarihParts[0];
    String hicriAy =
        hicriTarihParts.sublist(1, hicriTarihParts.length - 1).join(' ');
    String hicriYil = hicriTarihParts.last;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/images/allPrayTimes.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200, 
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalendarNavigationWidget(
                  selectedDate: selectedDate,
                  onDateChanged: onDateChanged,
                  hicriGun: hicriGun,
                  hicriAy: hicriAy,
                  hicriYil: hicriYil,
                ),
                GunDurumuWidget(
                  gunDurumu: gunDurumu,
                  ezaniDurum: ezaniDurum,
                ),
                const SizedBox(height: 5),
                SelectedCityAndIconWidget(
                  context: context,
                  selectedCityName: selectedCityName,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
