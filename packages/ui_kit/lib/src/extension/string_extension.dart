extension StringX on String {
  String get initials {
    final stringList = this;
    if (stringList.isEmpty) return '';
    return stringList
        .split(' ')
        .take(2)
        .map((element) => element.isNotEmpty ? element[0].toUpperCase() : '')
        .join();
  }

  String get secondWordInitial {
    final stringList = split(' ').take(2).toList();
    if (stringList.isEmpty) return '';
    if (stringList.length == 1) return stringList[0];
    return '${stringList[0]} ${stringList[1].isNotEmpty ? '${stringList[1][0].toUpperCase()}.' : ''}';
  }

  String get lastFourCharacters => length >= 4 ? substring(length - 4) : this;
}
