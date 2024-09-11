import 'package:flutter/material.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';
import 'package:share_plus/share_plus.dart';

import '../../../classes/functions.dart';

class DailyQuouteWidget extends StatelessWidget {
  const DailyQuouteWidget({
    super.key,
    required this.context,
    required this.gununSozu,
  });

  final BuildContext context;
  final String gununSozu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Share.share(Functions.cleanHtmlTags(gununSozu));
      },
      child: Card(
        color: const Color.fromARGB(170, 255, 255, 255),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: DateColumnWidgetStyles.boxDecoration,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth,
                ),
                child: Text(
                  Functions.cleanHtmlTags(gununSozu),
                  style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  overflow: TextOverflow.clip,
                  softWrap: true,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
