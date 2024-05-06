import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterListPeriodicOrders extends ConsumerStatefulWidget {
  const FilterListPeriodicOrders({
    required this.stateDate,
    required this.endDate,
    required this.amountFrom,
    required this.amountTo,
    required this.frecuency,
    required this.onClearDateRange,
    required this.onClearAmountRange,
    required this.onClearFrecuency,
    super.key,
  });

  final DateTime? stateDate;
  final DateTime? endDate;
  final double? amountFrom;
  final double? amountTo;
  final PeriodicOrderFrecuencyType? frecuency;
  final VoidCallback onClearDateRange;
  final VoidCallback onClearAmountRange;
  final VoidCallback onClearFrecuency;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterListPeriodicOrdersState();
}

class _FilterListPeriodicOrdersState
    extends ConsumerState<FilterListPeriodicOrders> {
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
          Visibility(
            visible: widget.frecuency != null,
            child: TextFilterListItem(
              textFilter: widget.frecuency!.name,
              onClear: widget.onClearFrecuency,
            ),
          ),
        ],
      ),
    );
  }
}
