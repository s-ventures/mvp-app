import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class InternationalTransferForm extends StatelessWidget {
  const InternationalTransferForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.loc.dailyBankingInternationalTransfersDestination,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomDropdown(
          labelText: context
              .loc.dailyBankinginternationalTransfersCountryRecipientBank,
          initialValue: 'Portugal',
          dropDownList: [
            DropownValueModel(
              name: context.loc.commonCountriesSpain,
              value: 'España',
            ),
            DropownValueModel(
              name: context.loc.commonCountriesPortugal,
              value: 'Portugal',
            ),
            DropownValueModel(
              name: context.loc.commonCountriesFrance,
              value: 'Francia',
            ),
          ],
          onChanged: (value) {},
        ),
        AppSpacing.vertical.s3,
        CustomDropdown(
          labelText: context.loc.commonCurrency,
          initialValue: 'Dollar',
          dropDownList: const [
            DropownValueModel(name: 'Euro (€)', value: 'Euro'),
            DropownValueModel(name: r'Dollar ($)', value: 'Dollar'),
          ],
          onChanged: (value) {},
        ),
        AppSpacing.vertical.s3,
        TextInput(
          labelText: context.loc.commonCorporateName,
          fillColor: context.color.backgroundLight0,
        ),
        AppSpacing.vertical.s3,
        TextInput(
          labelText: context.loc.commonBicSwift,
          fillColor: context.color.backgroundLight0,
        ),
        AppSpacing.vertical.s3,
        TextInput(
          labelText: context.loc.commonConcept,
          fillColor: context.color.backgroundLight0,
        ),
      ],
    );
  }
}
