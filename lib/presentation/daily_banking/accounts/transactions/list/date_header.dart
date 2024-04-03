import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({
    required this.label,
    required this.date,
    super.key,
  });

  final String label;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight300,
            ),
          ),
        ),
        Text(
          date,
          style: context.textStyle.buttonTabBar.copyWith(
            color: context.color.textLight300,
          ),
        ),
      ],
    );
  }
}
