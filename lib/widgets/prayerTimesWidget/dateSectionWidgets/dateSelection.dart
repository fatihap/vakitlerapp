import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DateSelectionWidget extends StatelessWidget {
  final VoidCallback goToToday;
  final VoidCallback selectDate;
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;
  const DateSelectionWidget({
    super.key,
    required this.goToToday,
    required this.selectDate,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Color.fromARGB(255, 4, 60, 106),
            size: 50,
          ),
          onPressed: () {
            onDateChanged(selectedDate.subtract(const Duration(days: 1)));
          },
        ),
        Flexible(
          child: ElevatedButton(
            onPressed: goToToday,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
              ),
              backgroundColor: const Color.fromARGB(170, 255, 255, 255),
            ),
            child:  Text(
              'bugun'.tr,
              style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 4, 60, 106),),
            ),
          ),
        ),
        const SizedBox(width: 2),
        Flexible(
          child: ElevatedButton(
            onPressed: selectDate,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: 10,
              ),
              backgroundColor:const  Color.fromARGB(170, 255, 255, 255),
            ),
            child:  Text(
              'tarih_sec'.tr,
              style:const TextStyle(fontSize: 18, color:  Color.fromARGB(255, 4, 60, 106)),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.arrow_circle_right_outlined,
            color: Color.fromARGB(255, 4, 60, 106),
            size: 50,
          ),
          onPressed: () {
            onDateChanged(selectedDate.add(const Duration(days: 1)));
          },
        ),
      ],
    );
  }
}
