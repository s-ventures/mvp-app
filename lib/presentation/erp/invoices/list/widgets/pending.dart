import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/invoices_status_color_extension.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InvoicesPending extends StatelessWidget {
  const InvoicesPending({
    required this.type,
    required this.setType,
    required this.pendingInvoices,
    super.key,
  });

  final SwitchViewType type;
  final void Function(SwitchViewType) setType;
  final AsyncValue<List<Invoice>> pendingInvoices;

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
        pendingInvoices.when(
          data: (pendingInvoices) {
            if (type == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pendingInvoices.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final invoice = pendingInvoices[index];

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
                itemCount: pendingInvoices.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final invoice = pendingInvoices[index];

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
