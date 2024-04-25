import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_bottom_sheet.dart';
import 'package:ui_kit/ui_kit.dart';

class ProtectionCoverageIncluded extends StatelessWidget {
  const ProtectionCoverageIncluded({
    this.coveragesIncludedWithDescription,
    this.coveragesIncluded,
    super.key,
  });

  final List<Map<String, String>>? coveragesIncludedWithDescription;
  final List<String>? coveragesIncluded;

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
          if (coveragesIncludedWithDescription != null &&
              coveragesIncludedWithDescription!.isNotEmpty) ...[
            ...coveragesIncludedWithDescription!.map(
              (Map<String, dynamic> coverage) => GestureDetector(
                onTap: () => CoverageBottomSheet.show(
                  context: context,
                  title: coverage['title'] as String,
                  message: coverage['description'] as String,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.s1,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: AppSpacing.s5,
                        height: AppSpacing.s5,
                        padding: const EdgeInsets.all(AppSpacing.s2),
                        decoration: BoxDecoration(
                          color: context.color.tertiaryLight500,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconSvg.small(
                          IconAssets.check,
                          color: context.color.iconLight0,
                        ),
                      ),
                      AppSpacing.horizontal.s3,
                      Expanded(
                        child: Text(
                          coverage['title'] as String,
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ) as Iterable<Widget>,
          ],
          if (coveragesIncluded != null && coveragesIncluded!.isNotEmpty) ...[
            ...coveragesIncluded!.map(
              (String coverage) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.s1,
                ),
                child: Row(
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
            ) as Iterable<Widget>,
          ],
        ],
      ),
    );
  }
}
