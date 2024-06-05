import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsOrdering extends StatelessWidget {
  const MovementDetailsOrdering({
    required this.name,
    required this.accountNumber,
    super.key,
  });

  final String name;
  final String accountNumber;

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
            context.loc.dailyBankingTransfersReceivedMovementDetailsSender,
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
            context
                .loc.dailyBankingTransfersReceivedMovementDetailsSendersAccount,
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
        ],
      ),
    );
  }
}
