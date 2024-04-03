import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:ui_kit/ui_kit.dart';

const _minAmount = 0.0;
const _maxAmount = 100000.0;

class Amount extends ConsumerWidget {
  const Amount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amountRange = ref.watch(filterSimplifiedAccountTransactionsControllerProvider).amountRange ??
        const RangeValues(_minAmount, _maxAmount);
    final setAmountRange = ref.read(filterSimplifiedAccountTransactionsControllerProvider.notifier).setAmountRange;

    return CustomCard(
      outlined: true,
      child: Row(
        children: [
          SizedBox(
            width: 72,
            height: 32,
            child: TextInput(
              initialValue: amountRange.start.toInt().toString(),
              controller: TextEditingController(text: amountRange.start.toInt().toString()),
              keyboardType: TextInputType.number,
              size: TextInputSize.extraSmall,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                borderSide: BorderSide(color: context.color.strokeLigth200),
              ),
              fillColor: Colors.white,
              suffixText: '€',
              maxLines: 1,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  setAmountRange(RangeValues(double.parse(value), amountRange.end));
                }
              },
            ),
          ),
          AppSpacing.horizontal.s2,
          Flexible(
            child: RangeSlider(
              values: amountRange,
              max: _maxAmount,
              divisions: _maxAmount.toInt(),
              onChanged: setAmountRange,
            ),
          ),
          AppSpacing.horizontal.s2,
          SizedBox(
            width: 72,
            height: 32,
            child: TextInput(
              initialValue: amountRange.end.toInt().toString(),
              controller: TextEditingController(text: amountRange.end.toInt().toString()),
              keyboardType: TextInputType.number,
              size: TextInputSize.extraSmall,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                borderSide: BorderSide(color: context.color.strokeLigth200),
              ),
              fillColor: Colors.white,
              suffixText: '€',
              maxLines: 1,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  setAmountRange(RangeValues(amountRange.start, double.parse(value)));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
