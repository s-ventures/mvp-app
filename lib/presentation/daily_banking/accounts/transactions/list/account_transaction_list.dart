import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
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
      unawaited(
        ref.read(simplifiedAccountTransactionsControllerProvider.notifier).init(),
      );
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
        const CustomLoader().sliver;
  }
}

class _TransactionList extends StatelessWidget {
  const _TransactionList({
    required this.transactions,
    required this.onTransactionPressed,
    // this.onReload,
  });

  final Map<DateTime, List<SimplifiedAccountTransaction>> transactions;
  final ValueSetter<SimplifiedAccountTransaction> onTransactionPressed;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final date = transactions.entries.elementAt(index).key;
        final list = transactions.entries.elementAt(index).value;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date.formatToTransactionDate() ?? '',
              style: context.textStyle.bodySmallSemiBold.copyWith(
                color: context.color.textLight300,
              ),
            ),
            AppSpacing.vertical.s3,
            ...list.asMap().entries.map((entry) {
              final transaction = entry.value;
              final isFirst = entry.key == 0 || transaction.date != list[entry.key - 1].date;
              final isLast =
                  entry.key == list.length - 1 || transaction.date != list[entry.key + 1].date;

              final borderRadius = BorderRadius.only(
                topLeft: isFirst ? Radius.circular(context.radius.soft) : Radius.zero,
                topRight: isFirst ? Radius.circular(context.radius.soft) : Radius.zero,
                bottomLeft: isLast ? Radius.circular(context.radius.soft) : Radius.zero,
                bottomRight: isLast ? Radius.circular(context.radius.soft) : Radius.zero,
              );

              return TransactionListTile(
                leadingEmoji: '🏦',
                leadingBackgroundColor: context.color.secondaryLight600.withOpacity(.2),
                title: transaction.description,
                amount: transaction.amount,
                endBalance: transaction.endBalance,
                subtitle: transaction.type.name,
                borderRadius: borderRadius,
                onTap: () {
                  onTransactionPressed(transaction);
                },
              );
            }),
            AppSpacing.vertical.s5,
          ],
        );
      },
    );
  }
}
