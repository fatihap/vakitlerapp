import 'package:flutter/material.dart';

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
          icon: const Icon(Icons.arrow_back , color: Colors.blue,),
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
              backgroundColor: const Color.fromARGB(255, 230, 240, 243),
            ),
            child: const Text(
              'Bugün',
              style: TextStyle(
                fontSize: 18,
                color:  Color.fromARGB(248, 6, 27, 129)
              ),
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
              backgroundColor: const Color.fromARGB(255, 230, 240, 243),
            ),
            child: const Text(
              'Tarih Seç',
              style: TextStyle(fontSize: 18 , color:  Color.fromARGB(248, 6, 27, 129)),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward , color: Colors.blue,),
          onPressed: () {
            onDateChanged(selectedDate.add(const Duration(days: 1)));
          },
        ),
      ],
    );
  }
}
