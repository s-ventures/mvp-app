import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
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
    final amountRange = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.amountRange,
      ),
    );
    final creditDebitList = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select(
        (value) => value.creditDebitList,
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
          if (amountRange != null)
            AmountRangeFilterItem(
              amountRange: amountRange,
              onClear: () {
                controller
                  ..setAmountRange(null)
                  ..applyFilters();
              },
            ),
          if (creditDebitList.isNotEmpty)
            CreditDebitFilterItem(
              creditDebitList: creditDebitList,
              onClear: () {
                controller
                  ..selectCreditDebit(null)
                  ..applyFilters();
              },
            ),
        ],
      ),
    );
  }
}
