import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CalculatePriceSteps extends StatelessWidget {
  const CalculatePriceSteps({
    required this.title,
    required this.currentStep,
    required this.totalSteps,
    super.key,
  });

  final String title;
  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight900,
              ),
            ),
            Text(
              '$currentStep/$totalSteps',
              style: context.textStyle.bodyMediumRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        CustomLineBarsChart(
          children: [
            for (int i = 1; i <= totalSteps; i++)
              CustomLineBarChart(
                color: CustomLineBarColor.primary,
                active: i <= currentStep,
              ),
          ],
        ),
      ],
    );
  }
}

            // CustomLineBarChart(
            //   color: CustomLineBarColor.primary,
            //   active: true,
            // ),
            // CustomLineBarChart(),