import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PolicyBilling extends StatelessWidget {
  const PolicyBilling({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        ListTile(
          title: Text(
            'Cuantía',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            2640.00.toCurrency(plusSign: false),
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          leading: IconWithContainer(
            icon: IconAssets.euro,
            backgroundColor: context.color.neutralLight100,
          ),
        ),
        ListTile(
          title: Text(
            'Importe del último recibo',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            220.00.toCurrency(plusSign: false),
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          leading: IconWithContainer(
            icon: IconAssets.invoice,
            backgroundColor: context.color.neutralLight100,
          ),
        ),
        ListTile(
          title: Text(
            'Periodicidad de pago',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            'Mensualmente',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          leading: IconWithContainer(
            icon: IconAssets.calendar,
            backgroundColor: context.color.neutralLight100,
          ),
        ),
      ],
    );
  }
}
