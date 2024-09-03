import 'package:flutter/material.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';

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
      color: const Color.fromARGB(255, 230, 240, 243),
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
              onLongPress: () => Functions.copyGununOlayi(context, gununOlayi),
              child: Text(
                textAlign: TextAlign.center,
                Functions.cleanHtmlTags(gununOlayi),
                style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                    fontSize: 18, color: const Color.fromARGB(255, 5, 14, 132)),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
