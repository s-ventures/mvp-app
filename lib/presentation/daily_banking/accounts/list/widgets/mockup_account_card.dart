import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MockupAccountCard extends StatelessWidget {
  const MockupAccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s5),
      margin: const EdgeInsets.only(
        left: AppSpacing.s2,
        bottom: AppSpacing.s5,
        right: AppSpacing.s2,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.color.strokeLigth100,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSpacing.horizontal.s7,
              Text(
                0.00.toCurrency(plusSign: false),
                style: context.textStyle.h4,
              ),
              AppSpacing.horizontal.s7,
            ],
          ),
          AppSpacing.vertical.s2,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Saldo disponible ',
                style: context.textStyle.bodySmallRegular,
              ),
              Text(
                0.00.toCurrency(plusSign: false),
                style: context.textStyle.bodySmallSemiBold,
              ),
            ],
          ),
          AppSpacing.vertical.s3,
          SizedBox(
            height: AppSpacing.s7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSpacing.vertical.s7,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
