import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/operation_type.dart';
import 'package:ui_kit/ui_kit.dart';

class Amount extends ConsumerWidget {
  const Amount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref
        .read(filterSimplifiedAccountTransactionsControllerProvider.notifier);

    return CustomCard(
      child: Column(
        children: [
          SegmentedControl<OperationType>(
            onChanged: controller.setOperationType,
            values: OperationType.values,
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
                      onChanged: (value) =>
                          controller.setAmountFrom(double.tryParse(value)),
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
                      onChanged: (value) =>
                          controller.setAmountTo(double.tryParse(value)),
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
