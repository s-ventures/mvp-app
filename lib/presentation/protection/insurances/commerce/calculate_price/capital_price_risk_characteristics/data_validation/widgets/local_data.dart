import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LocalData extends StatelessWidget {
  const LocalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Datos local',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s4,
            vertical: AppSpacing.s3,
          ),
          tileColor: context.color.backgroundLight0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.radius.hard),
          ),
          title: Text(
            'Propietario',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
          leading: IconWithContainer(
            icon: IconAssets.user,
            backgroundColor: context.color.backgroundLight200,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Superficie ',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                '245 m²',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Año rehabilitación del local',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                '2021',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Año de construcción del edificio',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                '2000',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ],
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Construcción en el local asegurando con materiales combustibles en menos del 25%',
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
                'Actividad / almacenamiento en sótano o semisótano',
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
                '¿El local tiene terraza?',
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
                '¿El local dispone de algún hueco sin medida de protección?',
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
                '¿El local está situado en centro comercial?',
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
                'Ubicación local',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                'Núcleo urbano',
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
