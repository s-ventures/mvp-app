import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class OutlinedList extends StatelessWidget {
  const OutlinedList({
    required this.children,
    this.borderColor,
    super.key,
  });

  final List<Widget> children;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.backgroundLight0,
        borderRadius: BorderRadius.circular(context.radius.soft),
        border: Border.all(
          color: borderColor ?? context.color.strokeLigth100,
        ),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
