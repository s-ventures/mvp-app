import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policy_payment_periodicity.dart';
import 'package:ui_kit/ui_kit.dart';

class PolicyBilling extends StatelessWidget {
  const PolicyBilling({
    required this.amount,
    required this.lastInvoiceAmount,
    required this.paymentPeriodicity,
    super.key,
  });

  final double? amount;
  final double? lastInvoiceAmount;
  final PolicyPaymentPeriodicity? paymentPeriodicity;

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        ListTile(
          title: Text(
            context.loc.dailyBankingInsurancesPolicyDetailsAmount,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            amount?.toCurrency(plusSign: false) ?? '---',
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
            context.loc.dailyBankingInsurancesPolicyDetailsAmountLastReceipt,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            lastInvoiceAmount?.toCurrency(plusSign: false) ?? '---',
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
            context.loc.dailyBankingInsurancesPolicyDetailsFrequencyPayment,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            paymentPeriodicity?.name ?? '---',
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
