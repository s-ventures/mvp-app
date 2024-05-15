extension EnumByName<T extends Enum> on Iterable<T> {
  String _screamingSnakeToCamel(String s) => s
      .split('_')
      .map((str) => str[0].toUpperCase() + str.substring(1).toLowerCase())
      .join()
      .replaceRange(0, 1, s[0].toLowerCase());

  T byScreamingCaseName(String name) {
    final camelName = _screamingSnakeToCamel(name);

    for (final value in this) {
      if (value.name == camelName) return value;
    }
    throw ArgumentError.value(name, 'name', 'No enum value with that name');
  }
}
