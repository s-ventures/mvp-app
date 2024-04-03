import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.height = 0,
    this.thickness = 1,
    this.color,
  });

  factory CustomDivider.list(BuildContext context) => CustomDivider(
        thickness: 8,
        color: context.color.backgroundLight200,
      );

  final double height;
  final double? thickness;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      color: context.color.strokeLigth100,
    );
  }
}
