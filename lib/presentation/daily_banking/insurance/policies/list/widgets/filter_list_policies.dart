import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterListPolicies extends ConsumerStatefulWidget {
  const FilterListPolicies({
    required this.startDate,
    required this.endDate,
    required this.onClearDateRange,
    super.key,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final VoidCallback onClearDateRange;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterListPoliciesState();
}

class _FilterListPoliciesState extends ConsumerState<FilterListPolicies> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: kTextTabBarHeight,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          if (widget.startDate != null || widget.endDate != null)
            DateRangeFilterListItem(
              startDate: widget.startDate,
              endDate: widget.endDate,
              onClear: widget.onClearDateRange,
            ),
        ],
      ),
    );
  }
}
