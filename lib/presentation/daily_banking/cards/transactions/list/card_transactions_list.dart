import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/presentation/core/extensions/date_time_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTransactionsList extends ConsumerStatefulWidget {
  const CardTransactionsList({
    this.onTransactionPressed,
    super.key,
  });

  final void Function(SimplifiedCardTransaction transaction)?
      onTransactionPressed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CardTransactionsListState();
}

class _CardTransactionsListState extends ConsumerState<CardTransactionsList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref
          .read(simplifiedCardTransactionsControllerProvider.notifier)
          .init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final transactions = ref.watch(
      simplifiedCardTransactionsControllerProvider
          .select((value) => value.transactions),
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
  });

  final Map<DateTime, List<SimplifiedCardTransaction>> transactions;
  final ValueSetter<SimplifiedCardTransaction> onTransactionPressed;

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
            ...list.map(
              (transaction) => TransactionListTile(
                leadingEmoji: '💳',
                leadingBackgroundColor:
                    context.color.statusWarning.withOpacity(.2),
                title: transaction.concept,
                subtitle: '',
                endBalance: 0,
                amount: transaction.amount,
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
              ),
            ),
            AppSpacing.vertical.s5
          ],
        );
      },
    );
  }
}
