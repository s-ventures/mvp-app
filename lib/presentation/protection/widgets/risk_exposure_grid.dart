import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

const List<Map<String, dynamic>> riskExposureList = [
  {
    'title': 'Protege tus activos',
    'value': 0.25,
  },
  {
    'title': 'Protege tu responsabilidad',
    'value': 0.5,
  },
  {
    'title': 'Protege la salud',
    'value': 0.75,
  },
  {
    'title': 'Protege tus ingresos',
    'value': 1.00,
  },
];

class RiskExposureGrid extends StatelessWidget {
  const RiskExposureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppSpacing.s5,
        mainAxisSpacing: AppSpacing.s5,
      ),
      itemCount: riskExposureList.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final riskExposure = riskExposureList[index];

        return CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularProgressIndicator(
                value: riskExposure['value'] as double,
                strokeWidth: 6,
                backgroundColor: riskExposure['value'] as double == 1
                    ? context.color.statusSuccess.withOpacity(
                        .1,
                      )
                    : riskExposure['value'] as double > 0.5
                        ? context.color.statusWarning.withOpacity(
                            .1,
                          )
                        : riskExposure['value'] as double <= 0.5
                            ? context.color.statusError.withOpacity(
                                .1,
                              )
                            : context.color.neutralLight100,
                valueColor: AlwaysStoppedAnimation<Color>(
                  riskExposure['value'] as double == 1
                      ? context.color.statusSuccess
                      : riskExposure['value'] as double >= 0.75
                          ? context.color.statusWarning
                          : riskExposure['value'] as double <= 0.5
                              ? context.color.statusError
                              : context.color.neutralLight100,
                ),
              ),
              AppSpacing.vertical.s3,
              SizedBox(
                width: 120,
                child: Text(
                  riskExposure['title'] as String,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyle.bodySmallSemiBold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {},
                child: Row(
                  children: [
                    Text(
                      'Mejorar',
                      style: context.textStyle.buttonTabBar.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.horizontal.s3,
                    IconSvg.small(
                      IconAssets.chevronRight,
                      color: context.color.iconLight600,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
