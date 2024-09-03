import 'package:flutter/material.dart';

class DateColumnWidgetStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    color: Colors.blueGrey, 
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.blueGrey, 
  );

  static final BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
  /* border: Border.all(
      //çerçeve
      color: Color.fromARGB(255, 192, 127, 23),
      width: 3,
    ),
    */
    // kutu saran border

    color: Colors.transparent
  );

  static final BoxDecoration containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(4),
    color: Colors.grey.shade300,
  );
}
