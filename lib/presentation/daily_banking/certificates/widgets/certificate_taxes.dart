import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class CertificateTaxes extends StatelessWidget {
  const CertificateTaxes({required this.amount, super.key});

  final double amount;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: true,
      child: Column(
        children: [
          Text(
            amount.toCurrency(plusSign: false),
            style: context.textStyle.h4.copyWith(
              color: context.color.textLight900,
            ),
          ),
          AppSpacing.vertical.s5,
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.s3,
              horizontal: AppSpacing.s5,
            ),
            decoration: BoxDecoration(
              color: context.color.strokeLigth100,
              borderRadius: BorderRadius.circular(context.radius.soft),
            ),
            child: Text(
              context.loc.dailyBankingAccountsCertificatesRequestCommission,
              textAlign: TextAlign.center,
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
