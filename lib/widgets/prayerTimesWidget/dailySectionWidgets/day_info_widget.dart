import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../classes/format_number.dart';
import '../../../services/calendar_service.dart';
import '../../../styles/DateColumWidgetStyles.dart';
import '../dateSectionWidgets/dateSelection.dart';

class ReusableCardWidget extends StatefulWidget {
  final VoidCallback goToToday;
  final VoidCallback selectDate;
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;

  const ReusableCardWidget({
    super.key,
    required this.goToToday,
    required this.selectDate,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  _ReusableCardWidgetState createState() => _ReusableCardWidgetState();
}

class _ReusableCardWidgetState extends State<ReusableCardWidget> {
  late Future<Map<String, String>> _fetchTakvimFuture;
  late Map<String, String> takvimData;

  @override
  void initState() {
    super.initState();
    _fetchTakvimFuture = fetchTakvimData();
  }

  @override
  void didUpdateWidget(covariant ReusableCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDate != widget.selectedDate) {
      _fetchTakvimFuture = fetchTakvimData();
    }
  }

  Future<Map<String, String>> fetchTakvimData() async {
    try {
      return await CalendarService.fetchTakvim(widget.selectedDate);
    } catch (e) {
      return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, String>>(
      future: _fetchTakvimFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        } else {
          takvimData = snapshot.data!;
          final locale = Get.locale?.toString() ?? 'tr_TR';
          return Card(
            color: const Color.fromARGB(170, 255, 255, 255),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildText(
                      'HicriKameri', takvimData['hicriTarih'] ?? '', locale),
                  buildText(
                      'HicriSemsi', takvimData['hicriSemsi'] ?? '', locale),
                  buildText('Rumi', takvimData['rumi'] ?? '', locale),
                  buildText('', takvimData['hizirKasim'] ?? '', locale),
                  const SizedBox(height: 12),
                  buildYearInfo(widget.selectedDate), // Bilgi satırı eklendi
                  const SizedBox(height: 12),
                  DateSelectionWidget(
                    selectedDate: widget.selectedDate,
                    onDateChanged: widget.onDateChanged,
                    goToToday: widget.goToToday,
                    selectDate: widget.selectDate,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Widget buildText(String key, String value, String locale) {
    const double titleWidth = 120.0;
    final title = key.tr;

    final formattedValue = value.split(' ').map((part) {
      final intValue = int.tryParse(part);
      return intValue != null ? formatNumber(intValue, locale) : part;
    }).join(' ');

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: titleWidth,
          child: Text(
            title,
            style: DateColumnWidgetStyles.subtitleStyle.copyWith(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        if (title.isNotEmpty)
          SizedBox(
            width: 20.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ':',
                style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              formattedValue,
              textAlign: TextAlign.left,
              style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildYearInfo(DateTime selectedDate) {
    final int dayOfYear = calculateDayOfYear(selectedDate);
    final int daysRemaining = calculateDaysRemainingInYear(selectedDate);
    final int weekOfYear = calculateWeekOfYear(selectedDate);
    final int monthOfYear = calculateMonthOfYear(selectedDate);
    final int daysInMonth = calculateDaysInMonth(selectedDate);

    final locale = Get.locale?.toString() ?? 'tr_TR';

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:
                '${'year_day'.tr} ${formatNumber(dayOfYear, locale)}${'day_remaining'.tr} ${formatNumber(daysRemaining, locale)}\n',
            style: DateColumnWidgetStyles.subtitleStyle.copyWith(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text:
                '${formatNumber(monthOfYear, locale)}${'month'.tr}, ${formatNumber(daysInMonth, locale)}${'days'.tr}, ${formatNumber(weekOfYear, locale)}${'week'.tr}.',
            style: DateColumnWidgetStyles.subtitleStyle.copyWith(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  int calculateDayOfYear(DateTime date) {
    return date.difference(DateTime(date.year, 1, 1)).inDays + 1;
  }

  int calculateDaysRemainingInYear(DateTime date) {
    final endOfYear = DateTime(date.year, 12, 31);
    final totalDaysInYear = isLeapYear(date.year) ? 366 : 365;
    return totalDaysInYear - calculateDayOfYear(date);
  }

  int calculateWeekOfYear(DateTime date) {
    final firstDayOfYear = DateTime(date.year, 1, 1);
    return (date.difference(firstDayOfYear).inDays / 7).ceil();
  }

  int calculateWeeksRemainingInYear(DateTime date) {
    final lastDayOfYear = DateTime(date.year, 12, 31);
    return (lastDayOfYear.difference(date).inDays / 7).ceil();
  }

  int calculateMonthOfYear(DateTime date) {
    return date.month;
  }

  int calculateDaysInMonth(DateTime date) {
    final nextMonth = DateTime(date.year, date.month + 1, 1);
    return nextMonth.subtract(const Duration(days: 1)).day;
  }

  bool isLeapYear(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
