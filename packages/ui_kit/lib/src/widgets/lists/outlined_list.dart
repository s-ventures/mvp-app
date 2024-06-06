import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum OutlinedListRadius {
  soft,
  hard,
}

class OutlinedList extends StatelessWidget {
  const OutlinedList({
    required this.children,
    this.borderColor,
    this.borderRadius = OutlinedListRadius.soft,
    super.key,
  });

  final List<Widget> children;
  final Color? borderColor;
  final OutlinedListRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.backgroundLight0,
        borderRadius: BorderRadius.circular(
          borderRadius == OutlinedListRadius.hard ? context.radius.hard : context.radius.soft,
        ),
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
