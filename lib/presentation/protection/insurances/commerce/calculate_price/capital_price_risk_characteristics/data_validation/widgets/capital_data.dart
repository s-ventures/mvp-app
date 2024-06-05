import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CapitalData extends StatelessWidget {
  const CapitalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Datos capitales',
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
                'RC básica',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                'Si',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Daños estéticos',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                'Si',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Pérdida de beneficios (días)',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                '20 días',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Pérdida de beneficios (€ / día)',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                '14 € / día',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
