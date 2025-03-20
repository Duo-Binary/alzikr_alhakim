String getQuranPageDir(int number) {
  return 'assets/quran-images/page${_formattedPageNumber(number)}.png';
}

String _formattedPageNumber(int number) {
  if (number < 10) return '00$number';
  if (number < 100) return '0$number';
  return '$number';
}
