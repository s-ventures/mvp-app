import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TotalCoverage extends StatelessWidget {
  const TotalCoverage(
    this.percent, {
    super.key,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cobertura total',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              Text(
                '${(percent * 100).toInt()}%',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s5,
          LinearProgressIndicator(
            minHeight: 6,
            value: percent,
            backgroundColor: context.color.statusWarning.withOpacity(.1),
            valueColor: AlwaysStoppedAnimation<Color>(
              context.color.statusWarning,
            ),
            borderRadius: BorderRadius.circular(context.radius.soft),
          ),
        ],
      ),
    );
  }
}
