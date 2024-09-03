import 'package:intl/intl.dart';

String formatNumber(int number, String locale) {
  final numberFormat = NumberFormat.decimalPattern(locale);
  String formattedNumber = numberFormat.format(number);

  if (locale == 'fa') {
    return convertToPersianNumerals(formattedNumber);
  } else if (locale == 'ar') {
    return convertToArabicNumerals(formattedNumber);
  } else {
    return formattedNumber;
  }
}

String convertToPersianNumerals(String number) {
  const latinToPersianMap = {
    '0': '۰',
    '1': '۱',
    '2': '۲',
    '3': '۳',
    '4': '۴',
    '5': '۵',
    '6': '۶',
    '7': '۷',
    '8': '۸',
    '9': '۹'
  };
  return number
      .split('')
      .map((char) => latinToPersianMap[char] ?? char)
      .join('');
}

String convertToArabicNumerals(String number) {
  const latinToArabicMap = {
    '0': '٠',
    '1': '١',
    '2': '٢',
    '3': '٣',
    '4': '٤',
    '5': '٥',
    '6': '٦',
    '7': '٧',
    '8': '٨',
    '9': '٩'
  };
  return number
      .split('')
      .map((char) => latinToArabicMap[char] ?? char)
      .join('');
}
