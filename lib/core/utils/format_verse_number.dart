String formatVerseNumber(int number) {
  const arabicNumbers = [
    '٠',
    '١',
    '٢',
    '٣',
    '٤',
    '٥',
    '٦',
    '٧',
    '٨',
    '٩',
  ];

  String numberText = number
      .toString()
      .split('')
      .map((digit) => arabicNumbers[int.parse(digit)])
      .join();

  return numberText;
}
