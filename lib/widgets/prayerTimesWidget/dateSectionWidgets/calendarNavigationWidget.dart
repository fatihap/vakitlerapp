import 'package:flutter/material.dart';

class CalendarNavigationWidget extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;
  final String hicriGun;
  final String hicriAy;
  final String hicriYil;

  const CalendarNavigationWidget({super.key, 
    required this.selectedDate,
    required this.onDateChanged,
    required this.hicriGun,
    required this.hicriAy,
    required this.hicriYil,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            onDateChanged(selectedDate.subtract(const Duration(days: 1)));
          },
        ),
     
           IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {
            onDateChanged(selectedDate.add(const Duration(days: 1)));
          },
        ),
      ],
    );
  }
}
