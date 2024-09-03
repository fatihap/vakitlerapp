import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../classes/format_number.dart';
import '../../../styles/DateColumWidgetStyles.dart';


class DateColumnWidget extends StatelessWidget {
  const DateColumnWidget({
    super.key,
    required DateTime selectedDate,
    required this.hicriYil,
    required this.hicriGun,
    required this.hicriAy,
  }) : _selectedDate = selectedDate;

  final DateTime _selectedDate;
  final String hicriYil;
  final String hicriGun;
  final String hicriAy;

  @override
  Widget build(BuildContext context) {
    final String locale = Get.locale?.toString() ?? 'tr_TR'; // Get locale

    final String dayName = 'HaftaninGunleri[${_selectedDate.weekday}]'.tr;
    final String monthName = 'SeneninAylari[${_selectedDate.month}]'.tr;

    final int hicriGunInt = int.tryParse(hicriGun) ?? 1;
    final String moonImagePath = 'assets/moonpics/$hicriGunInt.png';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: DateColumnWidgetStyles.boxDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('yyyy', locale).format(_selectedDate),
                          style: DateColumnWidgetStyles.titleStyle.copyWith(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          '${formatNumber(_selectedDate.day, locale)} $monthName',
                          style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          softWrap: true,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          dayName,
                          style: DateColumnWidgetStyles.subtitleStyle.copyWith(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/moon.png',
                            fit: BoxFit.fitWidth,
                            height: 100,
                          ),
                          Image.asset(
                            moonImagePath,
                            fit: BoxFit.fitWidth,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            height: 118,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: DateColumnWidgetStyles.boxDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          formatNumber(int.tryParse(hicriYil) ?? 0, locale),
                          style: DateColumnWidgetStyles.titleStyle
                              .copyWith(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          textAlign: TextAlign.end,
                          formatNumber(int.tryParse(hicriGun) ?? 0, locale),
                          style: DateColumnWidgetStyles.titleStyle
                              .copyWith(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          hicriAy,
                          style: DateColumnWidgetStyles.subtitleStyle
                              .copyWith(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
