// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
    required this.text,
    this.backgroundColor = const Color.fromARGB(255, 230, 240, 243),
    this.textColor = Colors.white,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.bold,
    this.letterSpacing = 2,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      color: backgroundColor,
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                const url = 'https://www.turktakvim.com/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
          ),
        ),
      ),
    );
  }
}
