import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';
import 'package:ui_kit/ui_kit.dart';

class CreditDebitFilterItem extends StatelessWidget {
  const CreditDebitFilterItem({
    required this.creditDebit,
    required this.onClear,
    super.key,
  });

  final AccountTransactionCreditDebit creditDebit;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
      title: Text(
        creditDebit.name,
        style: context.textStyle.bodySmallSemiBold.copyWith(
          color: context.color.primaryLight300,
        ),
      ),
      trailingIcon: IconAssets.xMark,
      onTrailingIconPressed: onClear,
      backgroundColor: context.color.backgroundLight0,
    );
  }
}
