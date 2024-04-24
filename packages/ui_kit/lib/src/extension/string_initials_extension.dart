extension StringInitials on String {
  String get initials {
    final stringList = this;
    if (stringList.isEmpty) return '';
    return stringList
        .split(' ')
        .map((element) => element.isNotEmpty ? element[0].toUpperCase() : '')
        .join();
  }

  String get secondWordInitial {
    final stringList = split(' ');
    if (stringList.length < 2) return '';
    return stringList[1].isNotEmpty ? stringList[1][0].toUpperCase() : '';
  }
}
