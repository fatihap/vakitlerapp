
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';

import 'format_number.dart';
import 'vakit.dart';

class Functions {

static Widget buildNextPrayerTimeBox(List<PrayerTime> prayerTimes) {
  if (prayerTimes.isEmpty) {
    return const SizedBox.shrink();
  }

  DateTime now = DateTime.now();
  DateTime selectedDate = now;

  DateTime? nextPrayerDateTime;
  String nextPrayerTimeKey = '';

  for (var prayerTime in prayerTimes) {
    DateTime imsak = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.imsak}');
    DateTime sabah = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.sabah}');
    DateTime gunes = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.gunes}');
    DateTime ogle = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.ogle}');
    DateTime ikindi = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.ikindi}');
    DateTime aksam = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.aksam}');
    DateTime yatsi = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTime.yatsi}');

    if (now.isBefore(imsak)) {
      nextPrayerDateTime = imsak;
      nextPrayerTimeKey = 'remain_imsak'.tr; // Imsak
      break;
    } else if (now.isBefore(sabah)) {
      nextPrayerDateTime = sabah;
      nextPrayerTimeKey = 'remain_sabah'.tr; // Sabah
      break;
    } else if (now.isBefore(gunes)) {
      nextPrayerDateTime = gunes;
      nextPrayerTimeKey = 'remain_gunes'.tr; // Güneş
      break;
    } else if (now.isBefore(ogle)) {
      nextPrayerDateTime = ogle;
      nextPrayerTimeKey = 'remain_ogle'.tr; // Öğle
      break;
    } else if (now.isBefore(ikindi)) {
      nextPrayerDateTime = ikindi;
      nextPrayerTimeKey = 'remain_ikindi'.tr; // İkindi
      break;
    } else if (now.isBefore(aksam)) {
      nextPrayerDateTime = aksam;
      nextPrayerTimeKey = 'remain_aksam'.tr; // Akşam
      break;
    } else if (now.isBefore(yatsi)) {
      nextPrayerDateTime = yatsi;
      nextPrayerTimeKey = 'remain_yatsi'.tr; // Yatsı
      break;
    }
  }

  if (nextPrayerDateTime == null) {
    selectedDate = selectedDate.add(const Duration(days: 1));
    nextPrayerDateTime = DateTime.parse(
        '${selectedDate.toString().split(' ')[0]} ${prayerTimes[0].imsak}');
    nextPrayerTimeKey = 'remain_imsak'.tr; // Imsak
  }

  Duration timeUntilNextPrayer = nextPrayerDateTime.difference(now);
  String formattedHours = formatNumber(timeUntilNextPrayer.inHours, Get.locale?.languageCode ?? 'tr');
  String formattedMinutes = formatNumber(timeUntilNextPrayer.inMinutes % 60, Get.locale?.languageCode ?? 'tr');
  String formattedSeconds = formatNumber(timeUntilNextPrayer.inSeconds % 60, Get.locale?.languageCode ?? 'tr');

  String formattedTimeUntilNextPrayer =
      '${formattedHours.padLeft(2, '0')}:${formattedMinutes.padLeft(2, '0')}:${formattedSeconds.padLeft(2, '0')}';

  Color backgroundColor = const Color(0xffb293153);

  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(5),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '$nextPrayerTimeKey ',
                  style: DateColumnWidgetStyles.subtitleStyle
                      .copyWith(color: Colors.white)),
              TextSpan(
                  text: formattedTimeUntilNextPrayer,
                  style: DateColumnWidgetStyles.titleStyle
                      .copyWith(fontSize: 24, color: Colors.white)),
            ],
          ),
        ),
      ],
    ),
  );
}


  static String cleanHtmlTags(String htmlString) {
    htmlString = htmlString
        .replaceAll('&Uuml;', 'Ü')
        .replaceAll('&Acirc;', 'A')
        .replaceAll('&#39;', 'ı')
        .replaceAll('&Icirc;', 'İ')
        .replaceAll('&Ucirc;', 'U')
        .replaceAll('&ucirc;', 'ü')
        .replaceAll('&uuml;', 'ü')
        .replaceAll('&bull;', '•')
        .replaceAll('&ccedil;', 'ç')
        .replaceAll('&Ccedil;', 'Ç')
        .replaceAll('&Ouml;', 'Ö')
        .replaceAll('&ouml;', 'ö')
        .replaceAll('&Scedil;', 'Ş')
        .replaceAll('&scedil;', 'ş')
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&rdquo;', '”')
        .replaceAll('&ldquo;', '“')
        .replaceAll('&rsquo;', '’')
        .replaceAll('&lsquo;', '‘')
        .replaceAll('&hellip;', '...')
        .replaceAll('&mdash;', '—')
        .replaceAll('&ndash;', '–')
        .replaceAll('&quot;', '"')
        .replaceAll('&acirc;', 'a')
        .replaceAll('&icirc;', 'i')
        .replaceAll('&amp;', '&')
        .replaceAll('<br>', '\n')
        .replaceAll('<br/>', '\n')
        .replaceAll('<br />', '\n')
        .replaceAll('<strong>', '')
        .replaceAll('</strong>', '')
        .replaceAll('<div>', '')
        .replaceAll('</div>', '')
        .replaceAll('<p>', '')
        .replaceAll('</p>', '');
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '');
  }

  static void copyGunDurumu(BuildContext context, String gunDurumu) {
    final clipboardText = Functions.cleanHtmlTags(gunDurumu);
    Clipboard.setData(ClipboardData(text: clipboardText));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Gün Durumu kopyalandı')),
    );
  }

  static void copyGununOlayi(BuildContext context, String gununOlayi) {
    final clipboardText = Functions.cleanHtmlTags(gununOlayi);
    Clipboard.setData(ClipboardData(text: clipboardText));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Günün Olayı kopyalandı')),
    );
  }

  static void copyGununSozu(BuildContext context, String gununSozu) {
    final clipboardText = Functions.cleanHtmlTags(gununSozu);
    Clipboard.setData(ClipboardData(text: clipboardText));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Günün Sözü kopyalandı')),
    );
  }

  static String cleanText(String htmlString) {
    final RegExp regExp =
        RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
    return htmlString.replaceAll(regExp, '').trim();
  }
  
}
