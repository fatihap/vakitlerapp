import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../classes/format_number.dart';
import '../../../classes/vakit.dart';
import '../../../styles/DateColumWidgetStyles.dart';

class ReusablePrayerTimeTable extends StatefulWidget {
  final List<PrayerTime> prayerTimes;
  final String selectedCityId;
  final String selectedCityName;
  final int selectedIndex;
  final DateTime selectedDate; 
  const ReusablePrayerTimeTable({
    super.key,
    required this.prayerTimes,
    required this.selectedCityId,
    required this.selectedCityName,
    required this.selectedIndex,
    required this.selectedDate, 
  });

  @override
  _ReusablePrayerTimeTableState createState() =>
      _ReusablePrayerTimeTableState();
}

class _ReusablePrayerTimeTableState extends State<ReusablePrayerTimeTable> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  int getCurrentPrayerIndex() {
    DateTime now = DateTime.now();
    if (widget.prayerTimes.isEmpty) return -1;

    List<String> times = [
      widget.prayerTimes[0].imsak,
      widget.prayerTimes[0].sabah,
      widget.prayerTimes[0].gunes,
      widget.prayerTimes[0].ogle,
      widget.prayerTimes[0].ikindi,
      widget.prayerTimes[0].aksam,
      widget.prayerTimes[0].yatsi,
    ];

    DateTime lastPrayerTime = DateTime(
      now.year,
      now.month,
      now.day,
      23,
      59,
    );

    if (now.isAfter(lastPrayerTime)) {
      return 0;
    }

    for (int i = 0; i < times.length; i++) {
      DateTime prayerTime = DateFormat.Hm().parse(times[i], true);
      DateTime todayPrayerTime = DateTime(
        now.year,
        now.month,
        now.day,
        prayerTime.hour,
        prayerTime.minute,
      );

      if (now.isBefore(todayPrayerTime)) {
        return i - 1;
      }
    }
    return times.length - 1;
  }

  bool isPrayerTimesForCurrentYear() {
    if (widget.prayerTimes.isEmpty) return false;
    DateTime now = DateTime.now();
    DateTime firstPrayerTime =
        DateFormat("yyyy-MM-dd").parse(widget.prayerTimes[0].date);
    return firstPrayerTime.year == now.year;
  }

  bool isSelectedDateToday() {
    DateTime now = DateTime.now();
    return now.year == widget.selectedDate.year &&
        now.month == widget.selectedDate.month &&
        now.day == widget.selectedDate.day;
  }

  @override
  Widget build(BuildContext context) {
    if (!isPrayerTimesForCurrentYear()) {
      return const Center(
        child: Text('No prayer times available for the current year.'),
      );
    }

    return Card(
      color: Colors.transparent,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: widget.prayerTimes.isNotEmpty
              ? _buildPrayerTimeRows()
              : [const Center(child: Text('Vakitler Bulunamadı.'))],
        ),
      ),
    );
  }

  List<Widget> _buildPrayerTimeRows() {
    int currentPrayerIndex = getCurrentPrayerIndex();
    bool isToday = isSelectedDateToday();

    String locale = Get.locale?.languageCode ?? 'tr';

    return [
      _buildPrayerTimeRow(
          0, 'imsak'.tr, widget.prayerTimes[0].imsak, currentPrayerIndex, 'imsak.png', isToday, locale),
      _buildPrayerTimeRow(
          1, 'sabah'.tr, widget.prayerTimes[0].sabah, currentPrayerIndex, 'sabâh.png', isToday, locale),
      _buildPrayerTimeRow(
          2, 'gunes'.tr, widget.prayerTimes[0].gunes, currentPrayerIndex, 'gunes.png', isToday, locale),
      _buildPrayerTimeRow(
          3, 'ogle'.tr, widget.prayerTimes[0].ogle, currentPrayerIndex, 'öğle.png', isToday, locale),
      _buildPrayerTimeRow(
          4, 'ikindi'.tr, widget.prayerTimes[0].ikindi, currentPrayerIndex, 'ikindi.png', isToday, locale),
      _buildPrayerTimeRow(
          5, 'aksam'.tr, widget.prayerTimes[0].aksam, currentPrayerIndex, 'akşam.png', isToday, locale),
      _buildPrayerTimeRow(
          6, 'yatsi'.tr, widget.prayerTimes[0].yatsi, currentPrayerIndex, 'yatsı.png', isToday, locale),
    ];
  }

  Widget _buildPrayerTimeRow(int index, String name, String time,
      int currentPrayerIndex, String iconName, bool isToday, String locale) {
    bool isCurrentPrayer = index == currentPrayerIndex && isToday;

    BoxDecoration boxDecoration = BoxDecoration(
      color: isCurrentPrayer ? Colors.transparent : Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    );

    String formattedTime = formatNumber(
      int.parse(DateFormat('HH').format(DateFormat.Hm().parse(time))),
      locale,
    ) +
    ':' +
    formatNumber(
      int.parse(DateFormat('mm').format(DateFormat.Hm().parse(time))),
      locale,
    );

    Widget timeContainer = Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      decoration: isCurrentPrayer
          ? BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            )
          : boxDecoration,
      child: Text(
        formattedTime,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: isCurrentPrayer ? Colors.white : Colors.black,
        ),
      ),
    );

    Widget indicator = isCurrentPrayer
        ? Positioned(
            left: 200,
            child: Transform.rotate(
              angle: 3.14,
              child: const Icon(
                Icons.keyboard_double_arrow_right_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
          )
        : const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: boxDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 26.0),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                      color: isCurrentPrayer
                          ? const Color(0XFFc5cae9)
                          : Colors.black,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/vakitler/$iconName',
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(width: 80),
                timeContainer,
              ],
            ),
            indicator,
          ],
        ),
      ),
    );
  }
}
