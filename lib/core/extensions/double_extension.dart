final _trailingZerosRegexp = RegExp(r'\.?0*$');

extension MoneyConvertationX on double {
  String toPrecision([int precision = 1]) {
    if (this % 1 == 0) {
      return toStringAsFixed(0);
    } else {
      return toStringAsFixed(precision).replaceFirst(
        _trailingZerosRegexp,
        '',
      );
    }
  }
}
