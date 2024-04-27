import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ProtectionHolderDataValidation extends StatelessWidget {
  const ProtectionHolderDataValidation({
    required this.fullName,
    required this.province,
    required this.birthdate,
    required this.gender,
    required this.nif,
    super.key,
  });

  final String fullName;
  final String province;
  final String birthdate;
  final String gender;
  final String nif;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Datos del titular',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre completo',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                fullName,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Provincia de residencia',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                province,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Fecha de nacimiento',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                birthdate,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'Sexo',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                gender,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
              Text(
                'NIF/NIE',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                nif,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s6,
            ],
          ),
        ),
      ],
    );
  }
}
