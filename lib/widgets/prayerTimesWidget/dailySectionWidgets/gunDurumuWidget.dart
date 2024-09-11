import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';

import '../../../classes/format_number.dart';

class GunDurumuWidget extends StatelessWidget {
  final String gunDurumu;
  final String ezaniDurum;

  const GunDurumuWidget({
    super.key,
    required this.gunDurumu,
    required this.ezaniDurum,
  });

  @override
  Widget build(BuildContext context) {
    String locale = Get.locale?.languageCode ?? 'tr'; 

    return Container(
      decoration: DateColumnWidgetStyles.boxDecoration,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              formatTextWithLocale('$gunDurumu, $ezaniDurum', locale),
              style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }





}
