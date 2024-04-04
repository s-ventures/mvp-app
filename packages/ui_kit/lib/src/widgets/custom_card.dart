import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.child,
    this.outlined = false,
    this.radius = 10,
    super.key,
  });

  factory CustomCard.outlined({
    required Widget child,
    double radius = 10,
  }) =>
      CustomCard(
        outlined: true,
        radius: radius,
        child: child,
      );

  final Widget child;
  final bool outlined;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: context.color.backgroundLight0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: outlined
            ? BorderSide(
                color: context.color.strokeLigth100,
              )
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.s5),
        child: child,
      ),
    );
  }
}
