import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ProtectionCoverageIncluded extends StatelessWidget {
  const ProtectionCoverageIncluded({
    required this.coveragesIncluded,
    super.key,
  });

  final List<String> coveragesIncluded;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Coberturas incluidas',
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          AppSpacing.vertical.s3,
          ...coveragesIncluded.map(
            (coverage) => Row(
              children: [
                CustomCheckbox.small(
                  onChecked: (value) {},
                  isChecked: true,
                  type: CheckboxType.circle,
                  activeColor: CheckboxColor.tertiary,
                ),
                Expanded(
                  child: Text(
                    coverage,
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
