import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum QuotesStatusType {
  pending,
  accepted,
}

class QuotesStatusFilter extends StatefulWidget {
  const QuotesStatusFilter({
    required this.status,
    required this.setStatusTo,
    super.key,
  });

  final dynamic status;
  final void Function(dynamic value) setStatusTo;

  @override
  State<QuotesStatusFilter> createState() => _QuotesStatusFilterState();
}

class _QuotesStatusFilterState extends State<QuotesStatusFilter> {
  int selectedIndex = 0;

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
            itemCount: QuotesStatusType.values.length,
            itemBuilder: (context, index) {
              final quotesStatus = QuotesStatusType.values[index];

              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.s3),
                child: CustomChip(
                  title: Text(
                    quotesStatus == QuotesStatusType.accepted
                        ? 'Accepted'
                        : quotesStatus == QuotesStatusType.pending
                            ? 'Pending'
                            : '',
                    style: context.textStyle.buttonExtraSmall.copyWith(
                      color: selectedIndex == index
                          ? context.color.textLight0
                          : context.color.primaryLight300,
                    ),
                  ),
                  onSelected: (value) {
                    setState(() {
                      selectedIndex = index;
                      widget.setStatusTo(quotesStatus);
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
