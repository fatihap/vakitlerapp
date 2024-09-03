
import 'vakit.dart';

class CountdownUtil {
  static Map<String, dynamic> updateCountdown(
      List<PrayerTime> prayerTimes, DateTime selectedDate) {
    DateTime now = DateTime.now();
    final List<Map<String, DateTime>> prayerTimesMap =
        prayerTimes.map((prayerTime) {
      return {
        'İmsak': DateTime.parse(
            '${selectedDate.toString().substring(0, 10)} ${prayerTime.imsak}:00'),
        'Sabah': DateTime.parse(
            '${selectedDate.toString().substring(0, 10)} ${prayerTime.sabah}:00'),
        'Öğle': DateTime.parse(
            '${selectedDate.toString().substring(0, 10)} ${prayerTime.ogle}:00'),
        'İkindi': DateTime.parse(
            '${selectedDate.toString().substring(0, 10)} ${prayerTime.ikindi}:00'),
        'Akşam': DateTime.parse(
            '${selectedDate.toString().substring(0, 10)} ${prayerTime.aksam}:00'),
        'Yatsı': DateTime.parse(
            '${selectedDate.toString().substring(0, 10)} ${prayerTime.yatsi}:00'),
      };
    }).toList();

    Map<String, DateTime>? nextPrayerTime;
    for (var prayerTime in prayerTimesMap) {
      String key = prayerTime.keys.first;
      DateTime time = prayerTime.values.first;
      if (time.isAfter(now)) {
        if (nextPrayerTime == null ||
            time.isBefore(nextPrayerTime.values.first)) {
          nextPrayerTime = {key: time};
        }
      }
    }

    String countdownText = '';
    int selectedIndex = -1;

    if (nextPrayerTime != null) {
      String vakitAdi = nextPrayerTime.keys.first;
      DateTime time = nextPrayerTime.values.first;
      Duration difference = time.difference(now);
      int totalMinutes = difference.inMinutes;
      int hours = totalMinutes ~/ 60;
      int minutes = totalMinutes % 60;

      String remainingTimeFormatted;
      if (hours > 0) {
        remainingTimeFormatted =
            '$hours saat ${minutes.toString().padLeft(2, '0')} dakika';
      } else {
        remainingTimeFormatted = '$minutes dakika';
      }

      countdownText = '$vakitAdi vaktine $remainingTimeFormatted kaldı.';
      selectedIndex = prayerTimesMap.indexWhere(
          (prayerTime) => prayerTime.containsValue(nextPrayerTime?.values.first));
    }

    return {'countdown': countdownText, 'selectedIndex': selectedIndex};
  }
}
