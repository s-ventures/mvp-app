extension StringInitials on String {
  String get initials {
    final stringList = this;
    if (stringList.isEmpty) return '';
    return stringList
        .split(' ')
        .map((element) => element.isNotEmpty ? element[0].toUpperCase() : '')
        .join();
  }
}
