import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesPending extends StatelessWidget {
  const ExpensesPending({
    required this.type,
    required this.setType,
    required this.items,
    super.key,
  });

  final SwitchViewType type;
  final void Function(SwitchViewType) setType;
  final List<Map<String, String>> items;

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
            itemCount: items.length,
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
            itemCount: items.length,
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
