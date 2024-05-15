import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class NationalTransferForm extends StatelessWidget {
  const NationalTransferForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Destino',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomDropdown(
          labelText: 'Pais del banco destinatario',
          initialValue: 'España',
          dropDownList: const [
            DropownValueModel(name: 'España', value: 'España'),
            DropownValueModel(name: 'Portugal', value: 'Portugal'),
            DropownValueModel(name: 'Francia', value: 'Francia'),
          ],
          onChanged: (value) {},
        ),
        AppSpacing.vertical.s3,
        CustomDropdown(
          labelText: 'Divisa',
          initialValue: 'Euro',
          dropDownList: const [
            DropownValueModel(name: 'Euro (€)', value: 'Euro'),
            DropownValueModel(name: r'Dollar ($)', value: 'Dollar'),
          ],
          onChanged: (value) {},
        ),
        AppSpacing.vertical.s3,
        TextInput(
          labelText: 'Nombre o razón social',
          fillColor: context.color.backgroundLight0,
        ),
        AppSpacing.vertical.s3,
        TextInput(
          labelText: 'IBAN',
          fillColor: context.color.backgroundLight0,
        ),
        AppSpacing.vertical.s3,
        TextInput(
          labelText: 'Concepto',
          fillColor: context.color.backgroundLight0,
        ),
      ],
    );
  }
}
