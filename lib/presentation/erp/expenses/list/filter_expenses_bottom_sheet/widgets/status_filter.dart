import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ExpensesStatusType {
  paid,
  pending,
  unpaid,
}

class ExpensesStatusFilter extends StatefulWidget {
  const ExpensesStatusFilter({
    required this.status,
    required this.setStatusTo,
    super.key,
  });

  final dynamic status;
  final void Function(dynamic value) setStatusTo;

  @override
  State<ExpensesStatusFilter> createState() => _ExpensesStatusFilterState();
}

class _ExpensesStatusFilterState extends State<ExpensesStatusFilter> {
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
            itemCount: ExpensesStatusType.values.length,
            itemBuilder: (context, index) {
              final quotesStatus = ExpensesStatusType.values[index];

              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.s3),
                child: CustomChip(
                  title: Text(
                    quotesStatus == ExpensesStatusType.paid
                        ? 'Pagado'
                        : quotesStatus == ExpensesStatusType.pending
                            ? 'Pendiente'
                            : quotesStatus == ExpensesStatusType.unpaid
                                ? 'Imagado'
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
