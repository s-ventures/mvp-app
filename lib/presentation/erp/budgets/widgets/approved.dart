import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/budget_grid_tile.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/budget_list_tile.dart';
import 'package:ui_kit/ui_kit.dart';

class BudgetsApproved extends StatelessWidget {
  const BudgetsApproved({
    required this.viewType,
    super.key,
  });

  final SwitchViewType viewType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Presupuestos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Button(
              icon: IconAssets.filter,
              onPressed: () async {},
              size: ButtonSize.extraSmall,
              type: ButtonType.outlined,
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        const FakeSearchBar(),
        AppSpacing.vertical.s5,
        if (viewType == SwitchViewType.list)
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
