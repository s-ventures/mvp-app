import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/filter_quotes_bottom_sheet/filter_quotes_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/quotes_grid_tile.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/quotes_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesApproved extends StatelessWidget {
  const QuotesApproved({
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
              size: ButtonSize.extraSmall,
              type: ButtonType.outlined,
              onPressed: () => FilterQuotesBottomSheet.show(
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
            AppRoute.erpQuotesSearch.name,
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
              return const QuotesListTile(
                quote: 'F1/2023',
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
            itemCount: 2,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const QuotesGridTile(
                quote: 'F1/2023',
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
