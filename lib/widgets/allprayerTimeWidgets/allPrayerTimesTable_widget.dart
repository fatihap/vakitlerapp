import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../classes/format_number.dart';
import '../../classes/vakit.dart';
import '../../styles/textStyle.dart';

// Ensure formatNumber function is in a separate file or included here
// import 'path_to_format_number_file.dart';

class PrayerTimeTableWidget extends StatefulWidget {
  final List<PrayerTime> prayerTimes;
  final DateTime selectedDate;

  const PrayerTimeTableWidget({
    super.key,
    required this.prayerTimes,
    required this.selectedDate,
  });

  @override
  State<PrayerTimeTableWidget> createState() => _PrayerTimeTableWidgetState();
}

class _PrayerTimeTableWidgetState extends State<PrayerTimeTableWidget> {
  @override
  Widget build(BuildContext context) {
    final locale = Get.locale?.languageCode ?? 'tr';

    if (widget.prayerTimes.isEmpty) {
      return const SizedBox.shrink();
    }

    final now = DateTime.now();
    final isToday = widget.selectedDate.isAtSameMomentAs(now);

    final currentPrayerIndex = isToday ? getCurrentPrayerIndex(now) : -1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'DigerVakitler'.tr,
            style: TextStyles.labelStyle,
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columnSpacing: 32,
            headingRowHeight: 50,
            columns: [
              DataColumn(
                label: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Vakit'.tr,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Saat'.tr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              if (locale == 'tr' || locale == 'en')
                const DataColumn(
                  label: SizedBox.shrink(),
                ),
            ],
            rows: buildPrayerTimeRows(context, currentPrayerIndex, locale),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            'KibleSaatiYazisi'.tr,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red[900],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  int getCurrentPrayerIndex(DateTime now) {
    final times = <DateTime>[
      _parsePrayerTime(widget.prayerTimes[0].imsak),
      _parsePrayerTime(widget.prayerTimes[0].sabah),
      _parsePrayerTime(widget.prayerTimes[0].gunes),
      _parsePrayerTime(widget.prayerTimes[0].israk),
      _parsePrayerTime(widget.prayerTimes[0].dahve),
      _parsePrayerTime(widget.prayerTimes[0].kerahet),
      _parsePrayerTime(widget.prayerTimes[0].ogle),
      _parsePrayerTime(widget.prayerTimes[0].ikindi),
      _parsePrayerTime(widget.prayerTimes[0].asrisani),
      _parsePrayerTime(widget.prayerTimes[0].isfirar),
      _parsePrayerTime(widget.prayerTimes[0].aksam),
      _parsePrayerTime(widget.prayerTimes[0].istibak),
      _parsePrayerTime(widget.prayerTimes[0].yatsi),
      _parsePrayerTime(widget.prayerTimes[0].isaisani),
      _parsePrayerTime(widget.prayerTimes[0].geceyarisi),
      _parsePrayerTime(widget.prayerTimes[0].teheccud),
      _parsePrayerTime(widget.prayerTimes[0].seher),
      _parsePrayerTime(widget.prayerTimes[0].kible),
    ];

    for (int i = 0; i < times.length; i++) {
      if (now.isBefore(times[i])) {
        return i - 1 >= 0 ? i - 1 : times.length - 1;
      }
    }
    return times.length - 1;
  }

  DateTime _parsePrayerTime(String time) {
    final parts = time.split(':');
    final hour = int.tryParse(parts[0]) ?? 0;
    final minute = int.tryParse(parts[1]) ?? 0;
    return DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, hour, minute);
  }

  List<DataRow> buildPrayerTimeRows(BuildContext context, int currentPrayerIndex, String locale) {
    final prayerTimeLabels = [
      'imsak',
      'sabah',
      'gunes',
      'israk',
      'dahve',
      'kerahet',
      'ogle',
      'ikindi',
      'asrisani',
      'isfirar',
      'aksam',
      'istibak',
      'yatsi',
      'isaisani',
      'geceyarisi',
      'teheccud',
      'seher',
      'kible',
    ];

    return List.generate(prayerTimeLabels.length, (index) {
      final label = prayerTimeLabels[index];
      final time = formatPrayerTime(getPrayerTimeForIndex(index), locale);

      return DataRow(
        color: MaterialStateProperty.resolveWith(
          (states) => index == currentPrayerIndex
              ? const Color.fromARGB(255, 44, 6, 234)
              : Colors.transparent,
        ),
        cells: [
          DataCell(
            Text(
              label.tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: index == currentPrayerIndex ? 20 : 18,
                color: Colors.white,
              ),
            ),
          ),
          DataCell(
            Text(
              time,
              style: TextStyle(
                fontSize: index == currentPrayerIndex ? 20 : 18,
                color: Colors.white,
              ),
            ),
          ),
          if (locale == 'tr' || locale == 'en')
            DataCell(
              IconButton(
                icon: const Icon(Icons.question_mark_outlined),
                color: Colors.white,
                onPressed: () {
                  // Handle information button click
                },
              ),
            ),
        ],
      );
    });
  }

  String getPrayerTimeForIndex(int index) {
    final times = <String>[
      widget.prayerTimes[0].imsak,
      widget.prayerTimes[0].sabah,
      widget.prayerTimes[0].gunes,
      widget.prayerTimes[0].israk,
      widget.prayerTimes[0].dahve,
      widget.prayerTimes[0].kerahet,
      widget.prayerTimes[0].ogle,
      widget.prayerTimes[0].ikindi,
      widget.prayerTimes[0].asrisani,
      widget.prayerTimes[0].isfirar,
      widget.prayerTimes[0].aksam,
      widget.prayerTimes[0].istibak,
      widget.prayerTimes[0].yatsi,
      widget.prayerTimes[0].isaisani,
      widget.prayerTimes[0].geceyarisi,
      widget.prayerTimes[0].teheccud,
      widget.prayerTimes[0].seher,
      widget.prayerTimes[0].kible,
    ];
    return times[index];
  }

  String formatPrayerTime(String time, String locale) {
    final parts = time.split(':');
    if (parts.length != 2) {
      return time;
    }
    final hours = int.tryParse(parts[0]) ?? 0;
    final minutes = int.tryParse(parts[1]) ?? 0;
    final formattedTime = formatNumber(hours, locale) + ':' + formatNumber(minutes, locale);
    return formattedTime;
  }
}
