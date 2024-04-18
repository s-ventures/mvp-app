import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomLineBarsChart extends StatelessWidget {
  const CustomLineBarsChart({
    required this.bars,
    super.key,
  });

  final List<Widget> bars;

  @override
  Widget build(BuildContext context) {
    final barsWithSpacing = <Widget>[];
    for (var i = 0; i < bars.length; i++) {
      if (i != 0) {
        barsWithSpacing.add(AppSpacing.horizontal.s2);
      }
      barsWithSpacing.add(bars[i]);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: barsWithSpacing,
    );
  }
}

enum CustomLineBarColor { critical, warning, success, neutral }

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
              : !active && CustomLineBarColor.success == color
                  ? context.color.statusSuccess.withOpacity(.1)
                  : !active && CustomLineBarColor.warning == color
                      ? context.color.statusWarning.withOpacity(.1)
                      : !active && CustomLineBarColor.critical == color
                          ? context.color.statusError.withOpacity(.1)
                          : active && CustomLineBarColor.neutral == color
                              ? context.color.strokeLigth100
                              : active && CustomLineBarColor.success == color
                                  ? context.color.statusSuccess
                                  : active &&
                                          CustomLineBarColor.warning == color
                                      ? context.color.statusWarning
                                      : active &&
                                              CustomLineBarColor.critical ==
                                                  color
                                          ? context.color.statusError
                                          : context.color.backgroundLight0,
        ),
        height: height,
      ),
    );
  }
}
