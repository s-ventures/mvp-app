import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/list/filter_expenses_bottom_sheet/filter_expenses_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesApproved extends StatelessWidget {
  const ExpensesApproved({
    required this.viewType,
    required this.items,
    super.key,
  });

  final SwitchViewType viewType;
  final List<Map<String, String>> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Gastos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Button(
              icon: IconAssets.filter,
              size: ButtonSize.extraSmall,
              type: ButtonType.outlined,
              onPressed: () => FilterExpensesBottomSheet.show(
                context: context,
                onApply: () async {},
                onReset: () async {},
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        FakeSearchBar(
          onPressed: () => context.pushNamed(
            AppRoute.erpExpensesSearch.name,
          ),
        ),
        AppSpacing.vertical.s5,
        if (viewType == SwitchViewType.list)
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final item = items[index];

              return ErpListTile(
                title: item['title']!,
                date: item['date']!,
                contact: item['contact']!,
                amount: double.parse(item['amount']!),
                status: item['status']!,
                onPressed: () async => context.pushNamed(
                  AppRoute.erpExpensesDetails.name,
                ),
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
            itemCount: 2,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final item = items[index];

              return ErpGridTile(
                title: item['title']!,
                date: item['date']!,
                contact: item['contact']!,
                amount: double.parse(item['amount']!),
                status: item['status']!,
                onPressed: () async => context.pushNamed(
                  AppRoute.erpExpensesDetails.name,
                ),
              );
            },
          ),
      ],
    );
  }
}
