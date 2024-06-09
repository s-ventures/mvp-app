import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_bottom_sheet.dart';
import 'package:ui_kit/ui_kit.dart';

enum CoverageCheckboxColoros {
  primary,
  secondary,
  tertiary,
}

class Coverages extends StatelessWidget {
  const Coverages({
    this.title,
    this.coveragesWithDescription,
    this.coverages,
    this.coverageCheckboxColors = CoverageCheckboxColoros.tertiary,
    this.outlined = true,
    super.key,
  });

  final String? title;
  final List<Map<String, String>>? coveragesWithDescription;
  final List<String>? coverages;
  final CoverageCheckboxColoros? coverageCheckboxColors;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight900,
              ),
            ),
            AppSpacing.vertical.s3,
          ],
          if (coveragesWithDescription != null && coveragesWithDescription!.isNotEmpty) ...[
            ...coveragesWithDescription!.map(
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
                          color: coverageCheckboxColors == CoverageCheckboxColoros.primary
                              ? context.color.primaryLight600
                              : coverageCheckboxColors == CoverageCheckboxColoros.secondary
                                  ? context.color.secondaryLight600
                                  : coverageCheckboxColors == CoverageCheckboxColoros.tertiary
                                      ? context.color.tertiaryLight500
                                      : context.color.strokeLigth100,
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
          if (coverages != null && coverages!.isNotEmpty) ...[
            ...coverages!.map(
              (String coverage) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.s2,
                ),
                child: Row(
                  children: [
                    Container(
                      width: AppSpacing.s5,
                      height: AppSpacing.s5,
                      padding: const EdgeInsets.all(AppSpacing.s2),
                      decoration: BoxDecoration(
                        color: coverageCheckboxColors == CoverageCheckboxColoros.primary
                            ? context.color.primaryLight600
                            : coverageCheckboxColors == CoverageCheckboxColoros.secondary
                                ? context.color.secondaryLight600
                                : coverageCheckboxColors == CoverageCheckboxColoros.tertiary
                                    ? context.color.tertiaryLight500
                                    : context.color.strokeLigth100,
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
                        coverage,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                          // decoration: TextDecoration.underline,
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
