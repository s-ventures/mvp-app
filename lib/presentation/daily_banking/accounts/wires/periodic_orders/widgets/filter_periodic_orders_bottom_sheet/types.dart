import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/filter/filter_simplified_periodic_orders_controller.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/filter/filter_simplified_periodic_orders_state.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterPeriodicOrdersType extends ConsumerWidget {
  const FilterPeriodicOrdersType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type =
        ref.watch(filterSimplifiedPeriodicOrdersControllerProvider).type;
    final setType = ref
        .read(filterSimplifiedPeriodicOrdersControllerProvider.notifier)
        .setType;

    return Row(
      children: [
        CustomChip(
          title: Text(
            'Todos',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: type == FilterSimplifiedPeriodicOrdersType.all
                  ? context.color.textLight0
                  : context.color.primaryLight300,
            ),
          ),
          selected: type == FilterSimplifiedPeriodicOrdersType.all,
          onSelected: (value) {
            setType(FilterSimplifiedPeriodicOrdersType.all);
          },
        ),
        AppSpacing.horizontal.s3,
        CustomChip(
          title: Text(
            'En curso',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: type == FilterSimplifiedPeriodicOrdersType.inProgress
                  ? context.color.textLight0
                  : context.color.primaryLight300,
            ),
          ),
          selected: type == FilterSimplifiedPeriodicOrdersType.inProgress,
          onSelected: (value) {
            setType(FilterSimplifiedPeriodicOrdersType.inProgress);
          },
        ),
      ],
    );
  }
}
