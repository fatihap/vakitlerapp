import 'package:flutter/material.dart';

import 'scrollMDatePicker_widget.dart';

class DateSelectorCard extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;
  final VoidCallback onGoToTodayPressed;

  const DateSelectorCard({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
    required this.onGoToTodayPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Tarih'),
            SizedBox(
              height: 150,
              child: ScrollMonthDayPicker(
                selectedDate: selectedDate,
                onDateTimeChanged: onDateChanged,
              ),
            ),
            ElevatedButton(
              onPressed: onGoToTodayPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 230, 240, 243),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Bugün', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
