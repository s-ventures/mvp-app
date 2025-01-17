import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';
import 'package:ui_kit/ui_kit.dart';

class CreditDebit extends ConsumerWidget {
  const CreditDebit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typesValue = ref.watch(filterSimplifiedAccountTransactionsControllerProvider).creditDebitList;
    final controller = ref.read(filterSimplifiedAccountTransactionsControllerProvider.notifier);

    return OutlinedList(
      children: [
        ...AccountTransactionCreditDebit.values.map((creditDebit) {
          return CustomCheckboxListTile(
            title: creditDebit.name,
            value: typesValue.contains(creditDebit),
            onChecked: (value) => controller.selectCreditDebit(creditDebit),
          );
        }),
      ],
    );
  }
}
