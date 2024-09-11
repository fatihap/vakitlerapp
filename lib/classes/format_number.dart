

String formatNumber(int number, String locale) {
  // Tek haneli sayıları iki basamaklı hale getiriyoruz
  String paddedNumber = number.toString().padLeft(2, '0');

  if (locale == 'fa') {
    return convertToPersianNumerals(paddedNumber);
  } else if (locale == 'ar') {
    return convertToArabicNumerals(paddedNumber);
  } else {
    // Diğer dillerde iki basamaklı sayılar olarak göstereceğiz
    return paddedNumber;
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

String formatTextWithLocale(String text, String locale) {
  if (locale == 'ar' || locale == 'fa') {
    return text.replaceAllMapped(
        RegExp(r'[0-9]'),
        (match) => locale == 'fa'
            ? convertToPersianNumerals(match.group(0)!)
            : convertToArabicNumerals(match.group(0)!));
  }
  return text;
}
