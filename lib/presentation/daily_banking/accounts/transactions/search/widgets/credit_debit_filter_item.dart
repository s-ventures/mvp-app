import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';
import 'package:ui_kit/ui_kit.dart';

class CreditDebitFilterItem extends StatelessWidget {
  const CreditDebitFilterItem({
    required this.creditDebitList,
    required this.onClear,
    super.key,
  });

  final List<AccountTransactionCreditDebit> creditDebitList;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final text = creditDebitList.map((creditDebit) => creditDebit.name).join(' y ');

    return CustomChip(
      title: Text(
        text,
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
