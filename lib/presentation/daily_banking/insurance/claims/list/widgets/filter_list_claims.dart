import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterListClaims extends ConsumerStatefulWidget {
  const FilterListClaims({
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.onClearDateRange,
    required this.onClearStatus,
    super.key,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final ClaimStatusType? status;
  final VoidCallback onClearDateRange;

  final VoidCallback onClearStatus;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterListClaimsState();
}

class _FilterListClaimsState extends ConsumerState<FilterListClaims> {
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
          if (widget.status != null)
            TextFilterListItem(
              textFilter: widget.status!.name,
              onClear: widget.onClearStatus,
            ),
        ],
      ),
    );
  }
}
