import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateNavigationRow extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback? onDecrease;
  final VoidCallback? onIncrease;

  const DateNavigationRow({
    super.key,
    required this.selectedDate,
    this.onDecrease,
    this.onIncrease,
  });

  String formatSelectedDateInCurrentLanguage(DateTime date) {
    final String month = 'SeneninAylari${[date.month]}'.tr;
    final String dayName = 'HaftaninGunleri${[date.weekday]}'.tr;

    return '${date.day} $month ${date.year} $dayName';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              formatSelectedDateInCurrentLanguage(selectedDate),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
