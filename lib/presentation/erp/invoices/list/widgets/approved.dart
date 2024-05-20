import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InvoicesApproved extends StatelessWidget {
  const InvoicesApproved({
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
              'Facturas',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Button(
              icon: IconAssets.filter,
              size: ButtonSize.extraSmall,
              type: ButtonType.outlined,
              onPressed: () async {},
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        FakeSearchBar(
          onPressed: () => context.pushNamed(
            AppRoute.erpInvoiceSearch.name,
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
              );
            },
          ),
      ],
    );
  }
}
