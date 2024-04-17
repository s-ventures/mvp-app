import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsBeneficiary extends StatelessWidget {
  const MovementDetailsBeneficiary({
    required this.name,
    required this.accountNumber,
    required this.transferType,
    super.key,
  });

  final String name;
  final String accountNumber;
  final String transferType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s5),
      decoration: ShapeDecoration(
        color: context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Beneficiario',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight600,
            ),
          ),
          AppSpacing.vertical.s1,
          Text(
            name,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
          AppSpacing.vertical.s6,
          Text(
            'Número de cuenta',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight600,
            ),
          ),
          AppSpacing.vertical.s1,
          Text(
            accountNumber,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
          AppSpacing.vertical.s6,
          Text(
            'Tipo de transferencia',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight600,
            ),
          ),
          AppSpacing.vertical.s1,
          Text(
            transferType,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
        ],
      ),
    );
  }
}
