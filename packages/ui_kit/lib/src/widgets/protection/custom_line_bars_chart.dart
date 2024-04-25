import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomLineBarsChart extends StatelessWidget {
  const CustomLineBarsChart({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final childrenWithSpacing = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      if (i != 0) {
        childrenWithSpacing.add(AppSpacing.horizontal.s2);
      }
      childrenWithSpacing.add(children[i]);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: childrenWithSpacing,
    );
  }
}

enum CustomLineBarColor { critical, warning, success, neutral, primary }

class CustomLineBarChart extends StatelessWidget {
  const CustomLineBarChart({
    this.color = CustomLineBarColor.neutral,
    this.active = false,
    this.height = 6.0,
    super.key,
  });

  final CustomLineBarColor color;
  final bool active;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.radius.soft),
          color: !active && CustomLineBarColor.neutral == color
              ? context.color.strokeLigth100
              : !active && CustomLineBarColor.primary == color
                  ? context.color.primary.withOpacity(.1)
                  : !active && CustomLineBarColor.success == color
                      ? context.color.statusSuccess.withOpacity(.1)
                      : !active && CustomLineBarColor.warning == color
                          ? context.color.statusWarning.withOpacity(.1)
                          : !active && CustomLineBarColor.critical == color
                              ? context.color.statusError.withOpacity(.1)
                              : active && CustomLineBarColor.neutral == color
                                  ? context.color.strokeLigth100
                                  : active && CustomLineBarColor.primary == color
                                      ? context.color.primary
                                      : active && CustomLineBarColor.success == color
                                          ? context.color.statusSuccess
                                          : active && CustomLineBarColor.warning == color
                                              ? context.color.statusWarning : active && CustomLineBarColor.critical == color
                                                  ? context.color.statusError
                                                  : context.color.backgroundLight0,
        ),
        height: height,
      ),
    );
  }
}
