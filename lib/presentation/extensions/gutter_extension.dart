import 'package:flutter/widgets.dart';

extension ListGutter on List<Widget> {
  List<Widget> separateVertical(double spacing) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, SizedBox(height: spacing), element],
        );

  List<Widget> separateHorizontal(double spacing) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, SizedBox(width: spacing), element],
        );
}
