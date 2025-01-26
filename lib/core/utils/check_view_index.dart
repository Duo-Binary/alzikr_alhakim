int? checkViewIndex(int index, List<int> views) {
  for (int i in views) {
    if (index == i) {
      return i;
    }
  }
  return null;
}
