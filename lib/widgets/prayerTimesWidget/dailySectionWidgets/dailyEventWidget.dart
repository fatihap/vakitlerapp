import 'package:flutter/material.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';
import 'package:share_plus/share_plus.dart'; // Share Plus paketini ekleyin

import '../../../classes/functions.dart';

class DailyEventWidget extends StatelessWidget {
  const DailyEventWidget({
    super.key,
    required this.context,
    required this.gununOlayi,
  });

  final BuildContext context;
  final String gununOlayi;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(170, 255, 255, 255),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: DateColumnWidgetStyles.boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onLongPress: () {
                Share.share(Functions.cleanHtmlTags(gununOlayi));
              },
              child: Text(
                textAlign: TextAlign.center,
                Functions.cleanHtmlTags(gununOlayi),
                style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
