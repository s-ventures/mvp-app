import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CoverageIncluded extends StatelessWidget {
  const CoverageIncluded({super.key});

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
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Siniestros y averias generales',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Asistencia Informática',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Robo con y sin violencia',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Daños Eléctricos',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Avería de Maquinaria',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Roturas de cristales',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Daños Estéticos',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Responsabilidad Civil',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Pérdida de Beneficios diaria',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox.small(
                onChecked: (value) {},
                isChecked: true,
                type: CheckboxType.circle,
                activeColor: CheckboxColor.secondary,
              ),
              Expanded(
                child: Text(
                  'Desalojo Forzoso',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
