import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterListSentTransfers extends ConsumerStatefulWidget {
  const FilterListSentTransfers({
    required this.stateDate,
    required this.endDate,
    required this.amountFrom,
    required this.amountTo,
    required this.onClearDateRange,
    required this.onClearAmountRange,
    super.key,
  });

  final DateTime? stateDate;
  final DateTime? endDate;
  final double? amountFrom;
  final double? amountTo;
  final VoidCallback onClearDateRange;
  final VoidCallback onClearAmountRange;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterListSentTransfersState();
}

class _FilterListSentTransfersState extends ConsumerState<FilterListSentTransfers> {
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
        ],
      ),
    );
  }
}
