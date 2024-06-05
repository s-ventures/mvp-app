import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum InvoicesStatusType {
  pending,
  collected,
  overdue,
}

class InvoicesStatusFilter extends StatefulWidget {
  const InvoicesStatusFilter({
    required this.status,
    required this.setStatusTo,
    super.key,
  });

  final dynamic status;
  final void Function(dynamic value) setStatusTo;

  @override
  State<InvoicesStatusFilter> createState() => _InvoicesStatusFilterState();
}

class _InvoicesStatusFilterState extends State<InvoicesStatusFilter> {
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
            itemCount: InvoicesStatusType.values.length,
            itemBuilder: (context, index) {
              final quotesStatus = InvoicesStatusType.values[index];

              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.s3),
                child: CustomChip(
                  title: Text(
                    quotesStatus == InvoicesStatusType.overdue
                        ? 'Vencidas'
                        : quotesStatus == InvoicesStatusType.pending
                            ? 'Pendientes'
                            : quotesStatus == InvoicesStatusType.collected
                                ? 'Cobradas'
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
