import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class RiskCharacteristicsData extends StatelessWidget {
  const RiskCharacteristicsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Características de riesgo',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '¿Con que medios de protección contra incendios cuentas?',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Row(
                children: [
                  Text(
                    '-',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.horizontal.s2,
                  Text(
                    'Manguera contra incendios',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s2,
              Row(
                children: [
                  Text(
                    '-',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.horizontal.s2,
                  Text(
                    'Detectores automáticos de incendio',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s2,
              Row(
                children: [
                  Text(
                    '-',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.horizontal.s2,
                  Text(
                    'Vigilancia permanente',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s6,
              Text(
                '¿Qué medidas contra robos tienes?',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Row(
                children: [
                  Text(
                    '-',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.horizontal.s2,
                  Text(
                    'Cristales de seguridad',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s2,
              Row(
                children: [
                  Text(
                    '-',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.horizontal.s2,
                  Text(
                    'Alarma conectada',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
