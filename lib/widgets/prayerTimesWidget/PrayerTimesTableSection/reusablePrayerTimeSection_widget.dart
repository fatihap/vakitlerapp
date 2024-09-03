import 'package:flutter/material.dart';

import '../../../../classes/vakit.dart';
import '../../../../fragments/location.dart';
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

  @override
  Widget build(BuildContext context) {
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
