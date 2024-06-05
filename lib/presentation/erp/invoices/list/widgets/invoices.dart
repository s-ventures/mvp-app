import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/list/filter_invoices_bottom_sheet/filter_invoices_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/invoices_status_color_extension.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Invoices extends StatefulWidget {
  const Invoices({
    required this.viewType,
    required this.invoices,
    super.key,
  });

  final SwitchViewType viewType;
  final AsyncValue<List<Invoice>> invoices;

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
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
              onPressed: () => FilterInvoicesBottomSheet.show(
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
            AppRoute.erpInvoicesSearch.name,
          ),
        ),
        AppSpacing.vertical.s5,
        widget.invoices.when(
          data: (invoices) {
            if (widget.viewType == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: invoices.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final invoice = invoices[index];

                  return ErpListTile(
                    title: invoice.number,
                    date: invoice.createdDate.formatToDayMonthYear(),
                    contact: invoice.fullName,
                    amount: invoice.totalAmount,
                    status: invoice.status.groupedStatus(invoice.dueDate),
                    statusColor: invoice.status.statusColor(invoice.dueDate, context),
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpInvoicesDetails.name,
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
                itemCount: invoices.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final invoice = invoices[index];

                  return ErpGridTile(
                    title: invoice.number,
                    date: invoice.createdDate.formatToDayMonthYear(),
                    contact: invoice.fullName,
                    amount: invoice.totalAmount,
                    status: invoice.status.groupedStatus(invoice.dueDate),
                    statusColor: invoice.status.statusColor(invoice.dueDate, context),
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpInvoicesDetails.name,
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
          loading: () => const Center(child: CustomLoader()),
        ),
      ],
    );
  }
}
