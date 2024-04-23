import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:ui_kit/ui_kit.dart';

class Amount extends ConsumerWidget {
  const Amount({
    required this.amountFrom,
    required this.amountTo,
    required this.setAmountFrom,
    required this.setAmountTo,
    required this.setOperationType,
    super.key,
  });

  final double? amountFrom;
  final double? amountTo;
  final ValueChanged<double> setAmountFrom;
  final ValueChanged<double> setAmountTo;
  final ValueChanged<TransactionOperationType> setOperationType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomCard(
      child: Column(
        children: [
          SegmentedControl<TransactionOperationType>(
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
                      'Desde',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s2,
                    // TODO(jesus): Create a custom widget for this
                    TextInput(
                      size: TextInputSize.extraSmall,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        final parsedValue = double.tryParse(value);
                        if (parsedValue != null) {
                          setAmountFrom(parsedValue);
                        }
                      },
                      fillColor: context.color.neutralLight100,
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                      suffixText: '€',
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
                      'Hasta',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s2,
                    // TODO(jesus): Create a custom widget for this
                    TextInput(
                      size: TextInputSize.extraSmall,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        final parsedValue = double.tryParse(value);
                        if (parsedValue != null) {
                          setAmountTo(parsedValue);
                        }
                      },
                      fillColor: context.color.neutralLight100,
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                      suffixText: '€',
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
