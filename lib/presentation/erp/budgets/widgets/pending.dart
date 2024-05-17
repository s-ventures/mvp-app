import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/budget_grid_tile.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/budget_list_tile.dart';
import 'package:ui_kit/ui_kit.dart';

class BudgetsPending extends StatelessWidget {
  const BudgetsPending({
    required this.type,
    required this.setType,
    super.key,
  });

  final SwitchViewType type;
  final void Function(SwitchViewType) setType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Pendientes',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            SwitchView(
              onChanged: setType,
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        if (type == SwitchViewType.list)
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return const BudgetListTile(
                budget: 'F1/2023',
                date: '12/23',
                contact: 'Contacto',
                amount: 1000,
                status: 'Vence en 3 días',
              );
            },
          )
        else
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.s5,
              mainAxisSpacing: AppSpacing.s5,
            ),
            itemCount: 6,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const BudgetGridTile(
                budget: 'F1/2023',
                date: '12/23',
                contact: 'Contacto',
                amount: 1000,
                status: 'Vence en 3 días',
              );
            },
          ),
      ],
    );
  }
}
