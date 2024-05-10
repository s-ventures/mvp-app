import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';
import 'package:ui_kit/ui_kit.dart';

class ClaimStatusFilter extends StatefulWidget {
  const ClaimStatusFilter({
    required this.status,
    required this.setStatusTo,
    super.key,
  });

  final ClaimStatusType? status;
  final ValueChanged<ClaimStatusType> setStatusTo;

  @override
  State<ClaimStatusFilter> createState() => _ClaimStatusFilterState();
}

class _ClaimStatusFilterState extends State<ClaimStatusFilter> {
  int? selectedIndex;

  @override
  void initState() {
    super.initState();

    if (widget.status != null) {
      selectedIndex = ClaimStatusType.values.indexOf(widget.status!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 36,
          width: double.infinity,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: ClaimStatusType.values.length,
            itemBuilder: (context, index) {
              final claimStatus = ClaimStatusType.values[index];

              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.s3),
                child: CustomChip(
                  title: Text(
                    claimStatus.name,
                    style: context.textStyle.buttonExtraSmall.copyWith(
                      color: selectedIndex == index
                          ? context.color.textLight0
                          : context.color.primaryLight300,
                    ),
                  ),
                  onSelected: (value) {
                    setState(() {
                      selectedIndex = index;
                      widget.setStatusTo(claimStatus);
                    });
                  },
                  selected: selectedIndex == index,
                  size: CustomChipSize.extraSmall,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
