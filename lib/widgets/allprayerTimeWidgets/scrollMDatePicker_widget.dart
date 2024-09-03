import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScrollMonthDayPicker extends StatefulWidget {
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateTimeChanged;

  const ScrollMonthDayPicker({
    super.key,
    required this.selectedDate,
    required this.onDateTimeChanged,
  });

  @override
  ScrollMonthDayPickerState createState() => ScrollMonthDayPickerState();
}

class ScrollMonthDayPickerState extends State<ScrollMonthDayPicker> {
  late int selectedMonth;
  late int selectedDay;

  @override
  void initState() {
    super.initState();
    selectedMonth = widget.selectedDate.month;
    selectedDay = widget.selectedDate.day;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
          width: 120,
          child: ListWheelScrollView(
            itemExtent: 50,
            physics: const FixedExtentScrollPhysics(),
            magnification: 1.2,
            diameterRatio: 1.5,
            useMagnifier: true,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedMonth = index + 1;
                _updateDateTime();
              });
            },
            children: List.generate(12, (index) {
              final month = index + 1;
              return Center(
                child: Text(
                  DateFormat.MMMM('tr_TR')
                      .format(DateTime(widget.selectedDate.year, month, 1)),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: selectedMonth == month
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(width: 16),
        SizedBox(
          height: 150,
          width: 60,
          child: ListWheelScrollView(
            itemExtent: 50,
            physics: const FixedExtentScrollPhysics(),
            magnification: 1.2,
            diameterRatio: 1.5,
            useMagnifier: true,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedDay = index + 1;
                _updateDateTime();
              });
            },
            children: List.generate(31, (index) {
              final day = index + 1;
              return Center(
                child: Text(
                  day.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: selectedDay == day
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  void _updateDateTime() {
    final newDateTime = DateTime(
      widget.selectedDate.year,
      selectedMonth,
      selectedDay,
    );
    widget.onDateTimeChanged(newDateTime);
  }
}
