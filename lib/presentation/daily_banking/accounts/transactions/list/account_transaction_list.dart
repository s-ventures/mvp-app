import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountTransactionList extends ConsumerStatefulWidget {
  const AccountTransactionList({
    this.onTransactionPressed,
    super.key,
  });

  final void Function(SimplifiedAccountTransaction transaction)? onTransactionPressed;

  @override
  ConsumerState<AccountTransactionList> createState() => _AccountTransactionListState();
}

class _AccountTransactionListState extends ConsumerState<AccountTransactionList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(simplifiedAccountTransactionsControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final transactions = ref.watch(
      simplifiedAccountTransactionsControllerProvider.select((value) => value.transactions),
    );

    return transactions.mapOrNull(
          data: (data) => _TransactionList(
            transactions: data.value,
            onTransactionPressed: (transaction) {
              widget.onTransactionPressed?.call(transaction);
            },
          ),
        ) ??
        const CircularProgressIndicator.adaptive().sliver;
  }
}

class _TransactionList extends StatelessWidget {
  const _TransactionList({
    required this.transactions,
    required this.onTransactionPressed,
    // this.onReload,
  });

  final List<SimplifiedAccountTransaction> transactions;
  final ValueSetter<SimplifiedAccountTransaction> onTransactionPressed;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];

        return TransactionListTile(
          leadingEmoji: '🏦',
          leadingBackgroundColor: context.color.secondaryLight600.withOpacity(.2),
          title: transaction.description,
          amount: transaction.amount,
          endBalance: transaction.endBalance,
          subtitle: transaction.type.name,
          borderRadius: index == 0
              ? BorderRadius.only(
                  topLeft: Radius.circular(context.radius.soft),
                  topRight: Radius.circular(context.radius.soft),
                )
              : index == transactions.length - 1
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(context.radius.soft),
                      bottomRight: Radius.circular(context.radius.soft),
                    )
                  : BorderRadius.zero,
          onTap: () {
            onTransactionPressed(transaction);
          },
        );
      },
    );
  }
}
