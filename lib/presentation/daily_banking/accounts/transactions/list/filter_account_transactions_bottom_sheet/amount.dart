import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:ui_kit/ui_kit.dart';

class Amount extends StatelessWidget {
  const Amount({
    required this.amountFrom,
    required this.amountTo,
    required this.operationType,
    required this.setAmountFrom,
    required this.setAmountTo,
    required this.setOperationType,
    super.key,
  });

  final double? amountFrom;
  final double? amountTo;
  final TransactionOperationType? operationType;
  final ValueChanged<double> setAmountFrom;
  final ValueChanged<double> setAmountTo;
  final ValueChanged<TransactionOperationType> setOperationType;

  @override
  Widget build(BuildContext context) {
    final amountFromController = TextEditingController(
      text: amountFrom?.toStringAsFixed(2).replaceAll('.', ','),
    );
    final amountToController = TextEditingController(
      text: amountTo?.toStringAsFixed(2).replaceAll('.', ','),
    );
    return CustomCard(
      child: Column(
        children: [
          SegmentedControl<TransactionOperationType>(
            adjustWidthToText: false,
            initialValue: operationType ?? TransactionOperationType.all,
            onChanged: setOperationType,
            values: TransactionOperationType.values,
            widgetBuilder: (value) => Text(value.name),
          ),
          AppSpacing.vertical.s4,
          Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.commonFrom,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s2,
                    AmountInput(
                      controller: amountFromController,
                      suffixText: '€',
                      onChanged: (value) {
                        final parsedValue = double.tryParse(value);
                        if (parsedValue != null) {
                          setAmountFrom(parsedValue);
                          amountFromController.text = value;
                        }
                      },
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontal.s5,
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.commonTo,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s2,
                    AmountInput(
                      controller: amountToController,
                      suffixText: '€',
                      onChanged: (value) {
                        final parsedValue = double.tryParse(value);
                        if (parsedValue != null) {
                          setAmountTo(parsedValue);
                          amountToController.text = value;
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
