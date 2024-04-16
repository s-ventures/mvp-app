import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/amount_range_filter_item.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/credit_debit_filter_item.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/date_range_filter_item.dart';

class FilterList extends ConsumerStatefulWidget {
  const FilterList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterListState();
}

class _FilterListState extends ConsumerState<FilterList> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.read(
      filterSimplifiedAccountTransactionsControllerProvider.notifier,
    );
    final stateDate = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.startDate,
      ),
    );
    final endDate = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.endDate,
      ),
    );
    final amountFrom = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.amountFrom,
      ),
    );
    final amountTo = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.amountTo,
      ),
    );
    final operationType = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.operationType,
      ),
    );

    return SizedBox(
      width: double.maxFinite,
      height: kTextTabBarHeight,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          if (stateDate != null || endDate != null)
            DateRangeFilterItem(
              startDate: stateDate,
              endDate: endDate,
              onClear: () {
                controller
                  ..setStartDate(null)
                  ..setEndDate(null)
                  ..applyFilters();
              },
            ),
          if (amountFrom != null || amountTo != null)
            AmountRangeFilterItem(
              amountFrom: amountFrom!,
              amountTo: amountTo!,
              onClear: () {
                controller
                  ..setAmountFrom(null)
                  ..setAmountTo(null)
                  ..applyFilters();
              },
            ),
          if (operationType != TransactionOperationType.all)
            CreditDebitFilterItem(
              creditDebit: operationType,
              onClear: () {
                controller
                  ..setOperationType(TransactionOperationType.all)
                  ..applyFilters();
              },
            ),
        ],
      ),
    );
  }
}
