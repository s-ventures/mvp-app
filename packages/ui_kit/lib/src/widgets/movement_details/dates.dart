import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsDate extends StatelessWidget {
  const MovementDetailsDate({
    required this.titleStartDate,
    required this.startDate,
    required this.titleEndDate,
    required this.endDate,
    super.key,
  });

  final String titleStartDate;
  final String startDate;
  final String titleEndDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: true,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleStartDate,
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: startDate,
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                ),
              ],
            ),
          ),
          AppSpacing.horizontal.s5,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleEndDate,
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: endDate,
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
