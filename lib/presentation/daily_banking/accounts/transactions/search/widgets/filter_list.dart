import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterList extends ConsumerStatefulWidget {
  const FilterList({
    required this.stateDate,
    required this.endDate,
    required this.amountFrom,
    required this.amountTo,
    required this.operationType,
    required this.onClearDateRange,
    required this.onClearAmountRange,
    required this.onClearCreditDebit,
    super.key,
  });

  final DateTime? stateDate;
  final DateTime? endDate;
  final double? amountFrom;
  final double? amountTo;
  final TransactionOperationType? operationType;
  final VoidCallback onClearDateRange;
  final VoidCallback onClearAmountRange;
  final VoidCallback onClearCreditDebit;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterListState();
}

class _FilterListState extends ConsumerState<FilterList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: kTextTabBarHeight,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          if (widget.stateDate != null || widget.endDate != null)
            DateRangeFilterListItem(
              startDate: widget.stateDate,
              endDate: widget.endDate,
              onClear: widget.onClearDateRange,
            ),
          if (widget.amountFrom != null || widget.amountTo != null)
            AmountRangeFilterListItem(
              amountFrom: widget.amountFrom ?? 0.0,
              amountTo: widget.amountTo ?? 0.0,
              onClear: widget.onClearAmountRange,
            ),
          if (widget.operationType != TransactionOperationType.all)
            TextFilterListItem(
              textFilter: widget.operationType != null
                  ? widget.operationType!.name
                  : TransactionOperationType.all.name,
              onClear: widget.onClearCreditDebit,
            ),
        ],
      ),
    );
  }
}
