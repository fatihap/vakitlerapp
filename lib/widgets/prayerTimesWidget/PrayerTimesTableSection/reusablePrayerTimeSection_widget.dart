import 'package:flutter/material.dart';

import '../../../../classes/vakit.dart';
import '../../../../fragments/location.dart';
import '../../../classes/functions.dart';
import '../../../styles/DateColumWidgetStyles.dart';
import 'prayerTimesTable_widget.dart';

class ReusablePrayerTimesSection extends StatefulWidget {
  final String selectedCityName;
  final String selectedCityId;
  final List<PrayerTime> prayerTimes;
  final DateTime selectedDate;

  const ReusablePrayerTimesSection({
    super.key,
    required this.selectedCityName,
    required this.selectedCityId,
    required this.selectedDate,
    required this.prayerTimes,
  });

  @override
  _ReusablePrayerTimesSectionState createState() =>
      _ReusablePrayerTimesSectionState();
}

class _ReusablePrayerTimesSectionState
    extends State<ReusablePrayerTimesSection> {
  int selectedIndex = -1;

  bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  @override
  Widget build(BuildContext context) {
    // Ensure the prayerTimes list is populated correctly
    List<PrayerTime> prayerTimes = widget.prayerTimes;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LocationWidget(
                          defaultCityId: '16741',
                          defaultCityName: 'İstanbul',
                          isFirstTouch: false,
                        ),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  widget.selectedCityName,
                  style: DateColumnWidgetStyles.titleStyle
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
         
          if (isToday(widget.selectedDate))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Functions.buildNextPrayerTimeBox(prayerTimes),
            ),
          Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              children: [
                ReusablePrayerTimeTable(
                  selectedDate: widget.selectedDate,
                  prayerTimes: widget.prayerTimes,
                  selectedCityId: widget.selectedCityId,
                  selectedCityName: widget.selectedCityName,
                  selectedIndex: selectedIndex,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
