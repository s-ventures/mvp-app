import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/filter_quotes_bottom_sheet/filter_quotes_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/quotes_status_color_extension.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Quotes extends StatelessWidget {
  const Quotes({
    required this.viewType,
    required this.quotes,
    super.key,
  });

  final SwitchViewType viewType;
  final AsyncValue<List<Quotation>> quotes;

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
        quotes.when(
          data: (quotes) {
            if (viewType == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quotes.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final quotation = quotes[index];

                  return ErpListTile(
                    title: quotation.number,
                    date: quotation.createdDate.formatToDayMonthYear(),
                    contact: quotation.fullName,
                    amount: quotation.totalAmount,
                    status: quotation.status.groupedStatus(quotation.dueDate),
                    statusColor: quotation.status.statusColor(quotation.dueDate, context),
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpQuotesDetails.name,
                    ),
                  );
                },
              );
            } else {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSpacing.s5,
                  mainAxisSpacing: AppSpacing.s5,
                ),
                itemCount: quotes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final quotation = quotes[index];

                  return ErpGridTile(
                    title: quotation.number,
                    date: quotation.createdDate.formatToDayMonthYear(),
                    contact: quotation.fullName,
                    amount: quotation.totalAmount,
                    status: quotation.status.groupedStatus(quotation.dueDate),
                    statusColor: quotation.status.statusColor(quotation.dueDate, context),
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpQuotesDetails.name,
                    ),
                  );
                },
              );
            }
          },
          error: (error, _) => Center(
            child: Text(
              error.toString(),
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.error,
              ),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator.adaptive()),
        ),
      ],
    );
  }
}
