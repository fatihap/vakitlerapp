import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../classes/constants.dart';
import '../../classes/format_number.dart';
import '../../classes/vakit.dart';
import '../../styles/DateColumWidgetStyles.dart';
import '../../styles/textStyle.dart';

class PrayerTimeTableWidget extends StatelessWidget {
  final List<PrayerTime> prayerTimes;
  final DateTime selectedDate;

  const PrayerTimeTableWidget({
    super.key,
    required this.prayerTimes,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    final locale = Get.locale?.languageCode ?? 'tr';

    if (prayerTimes.isEmpty) {
      return const SizedBox.shrink();
    }

    final now = DateTime.now();
    final isToday = selectedDate.year == now.year &&
        selectedDate.month == now.month &&
        selectedDate.day == now.day;

    final currentPrayerIndex = isToday ? getCurrentPrayerIndex(now) : null;

    return Center(
      child: Card(
        color: const Color.fromARGB(100, 75, 119, 171),
        child: Column(
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
                        'vakit'.tr,
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
                        'saat'.tr,
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
                'kibleSaatiYazisi'.tr,
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
        ),
      ),
    );
  }

  int getCurrentPrayerIndex(DateTime now) {
    List<String> times = [
      prayerTimes[0].imsak,
      prayerTimes[0].sabah,
      prayerTimes[0].gunes,
      prayerTimes[0].israk,
      prayerTimes[0].dahve,
      prayerTimes[0].kerahet,
      prayerTimes[0].ogle,
      prayerTimes[0].ikindi,
      prayerTimes[0].asrisani,
      prayerTimes[0].isfirar,
      prayerTimes[0].aksam,
      prayerTimes[0].istibak,
      prayerTimes[0].yatsi,
      prayerTimes[0].isaisani,
      prayerTimes[0].geceyarisi,
      prayerTimes[0].teheccud,
      prayerTimes[0].seher,
      prayerTimes[0].kible,
    ];

    for (int i = 0; i < times.length; i++) {
      final prayerTimeParts = times[i].split(':');
      if (prayerTimeParts.length != 2) continue;

      final prayerHour = int.tryParse(prayerTimeParts[0]) ?? 0;
      final prayerMinute = int.tryParse(prayerTimeParts[1]) ?? 0;

      final prayerDateTime =
          DateTime(now.year, now.month, now.day, prayerHour, prayerMinute);

      if (now.isBefore(prayerDateTime)) {
        return i - 1 >= 0 ? i - 1 : times.length - 1;
      }
    }
    return times.length - 1;
  }

  List<DataRow> buildPrayerTimeRows(
      BuildContext context, int? currentPrayerIndex, String locale) {
    final prayerTimeLabels = {
      0: 'imsak',
      1: 'sabah',
      2: 'gunes',
      3: 'israk',
      4: 'dahve',
      5: 'kerahet',
      6: 'ogle',
      7: 'ikindi',
      8: 'asrisani',
      9: 'isfirar',
      10: 'aksam',
      11: 'istibak',
      12: 'yatsi',
      13: 'isaisani',
      14: 'geceyarisi',
      15: 'teheccud',
      16: 'seher',
      17: 'kible',
    };

    final rows = <DataRow>[];

    for (int index = 0; index < prayerTimeLabels.length; index++) {
      final label = prayerTimeLabels[index] ?? '';

      if (label.isEmpty) {
        continue;
      }

      final time = formatPrayerTime(getPrayerTimeForIndex(index), locale);

      if (time.isNotEmpty && label.tr != '') {
        final row = buildPrayerTimeDataRow(
            context, label, time, currentPrayerIndex, locale);
        if (row != null) {
          rows.add(row);
        }
      }
    }

    return rows;
  }

  String getPrayerTimeForIndex(int index) {
    switch (index) {
      case 0:
        return prayerTimes[0].imsak;
      case 1:
        return prayerTimes[0].sabah;
      case 2:
        return prayerTimes[0].gunes;
      case 3:
        return prayerTimes[0].israk;
      case 4:
        return prayerTimes[0].dahve;
      case 5:
        return prayerTimes[0].kerahet;
      case 6:
        return prayerTimes[0].ogle;
      case 7:
        return prayerTimes[0].ikindi;
      case 8:
        return prayerTimes[0].asrisani;
      case 9:
        return prayerTimes[0].isfirar;
      case 10:
        return prayerTimes[0].aksam;
      case 11:
        return prayerTimes[0].istibak;
      case 12:
        return prayerTimes[0].yatsi;
      case 13:
        return prayerTimes[0].isaisani;
      case 14:
        return prayerTimes[0].geceyarisi;
      case 15:
        return prayerTimes[0].teheccud;
      case 16:
        return prayerTimes[0].seher;
      case 17:
        return prayerTimes[0].kible;
      default:
        return '';
    }
  }

  String formatPrayerTime(String time, String locale) {
    final parts = time.split(':');
    if (parts.length != 2) return time;

    final paddingChar = (locale == 'ar' || locale == 'fa') ? '٠' : '0';

    final hour =
        formatNumber(int.parse(parts[0]), locale).padLeft(2, paddingChar);
    final minute =
        formatNumber(int.parse(parts[1]), locale).padLeft(2, paddingChar);

    return '$hour:$minute';
  }

  DataRow? buildPrayerTimeDataRow(BuildContext context, String label,
      String time, int? currentPrayerIndex, String locale) {
    if (label.isEmpty || label.tr.isEmpty) {
      return null;
    }

    final isCurrent = currentPrayerIndex != null &&
        Constants.getIndexFromLabel(label) == currentPrayerIndex;

    return DataRow(
      color: MaterialStateProperty.resolveWith(
        (states) => isCurrent ? Colors.white : Colors.transparent,
      ),
      cells: [
        DataCell(
          Text(
            label.tr,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: isCurrent ? 22 : 20,
              color: isCurrent ? Colors.black : Colors.white,
            ),
          ),
        ),
        DataCell(
          Text(
            time,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: isCurrent ? 24 : 20,
              color: isCurrent ? Colors.black : Colors.white,
            ),
          ),
        ),
        if (locale == 'tr' || locale == 'en')
          DataCell(
            IconButton(
              icon: const Icon(Icons.question_mark_outlined),
              color: isCurrent ? Colors.black : Colors.white,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        label.tr,
                        style: DateColumnWidgetStyles.titleStyle,
                      ),
                      content: Text(
                        Constants.getDescription(label),
                        style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Kapat'.tr),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
