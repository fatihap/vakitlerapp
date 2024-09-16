import 'package:xml/xml.dart' as xml;

class PrayerTime {
  final String date;
  final String imsak;
  final String sabah;
  final String ogle;
  final String ikindi;
  final String aksam;
  final String yatsi;
  final String gunes;
  final String israk;
  final String dahve;
  final String kerahet;
  final String asrisani;
  final String isfirar;
  final String istibak;
  final String isaisani;
  final String geceyarisi;
  final String teheccud;
  final String seher;
  final String kible;

  PrayerTime({
    required this.date,
    required this.imsak,
    required this.sabah,
    required this.ogle,
    required this.ikindi,
    required this.aksam,
    required this.yatsi,
    required this.gunes,
    required this.israk,
    required this.asrisani,
    required this.dahve,
    required this.geceyarisi,
    required this.isaisani,
    required this.isfirar,
    required this.istibak,
    required this.kerahet,
    required this.kible,
    required this.seher,
    required this.teheccud,
  });

factory PrayerTime.fromXml(xml.XmlElement element) {
  return PrayerTime(
    date: element.getAttribute('tarih') ?? '',
    imsak: _getText(element, 'imsak'),
    sabah: _getText(element, 'sabah'),
    ogle: _getText(element, 'ogle'),
    ikindi: _getText(element, 'ikindi'),
    aksam: _getText(element, 'aksam'),
    yatsi: _getText(element, 'yatsi'),
    gunes: _getText(element, 'gunes'),
    israk: _getText(element, 'israk'),
    asrisani: _getText(element, 'asrisani'),
    isfirar: _getText(element, 'isfirar'),
    isaisani: _getText(element, 'isaisani'),
    dahve: _getText(element, 'dahve'),
    seher: _getText(element, 'seher'),
    teheccud: _getText(element, 'teheccud'),
    geceyarisi: _getText(element, 'geceyarisi'),
    istibak: _getText(element, 'istibak'),
    kerahet: _getText(element, 'kerahet'),
    kible: _getText(element, 'kible'),
  );
}


  static String _getText(xml.XmlElement element, String tag) {
    return element.findElements(tag).first.text;
  }

  toJson() {}
}
