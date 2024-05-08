import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:ui_kit/ui_kit.dart';

class CreditDebit extends ConsumerWidget {
  const CreditDebit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref
        .read(filterSimplifiedAccountTransactionsControllerProvider.notifier);
    final creditDebitValue = ref
        .watch(filterSimplifiedAccountTransactionsControllerProvider)
        .operationType;

    return OutlinedList(
      children: [
        ...TransactionOperationType.values.map((creditDebit) {
          return CustomCheckboxListTile(
            title: creditDebit.name,
            value: creditDebit == creditDebitValue,
            onPressed: (value) => controller.setOperationType(creditDebit),
          );
        }),
      ],
    );
  }
}
