import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/erp/invoices/pending/pending_invoices_controller.dart';
import 'package:manifiesto_mvp_app/application/erp/invoices/simplified/simplified_invoices_controller.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/list/widgets/invoices.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/list/widgets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class InvoicesTab extends ConsumerStatefulWidget {
  const InvoicesTab({super.key});

  @override
  ConsumerState<InvoicesTab> createState() => _InvoicesTabState();
}

class _InvoicesTabState extends ConsumerState<InvoicesTab> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedInvoicesControllerProvider.notifier).init(),
      );
      unawaited(
        ref.read(pendingInvoicesControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    final invoices = ref.watch(
      simplifiedInvoicesControllerProvider.select((value) => value.invoices),
    );
    final pendingInvoices = ref.watch(
      pendingInvoicesControllerProvider.select((value) => value.pendingInvoices),
    );
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        const ErpOverview(
          amount: 456,
          total: 789,
          percent: 1.3,
          greenValue: 189,
          greenLabel: 'Cobrada',
          yellowValue: 89,
          yellowLabel: 'Pendiente',
          redValue: 23,
          redLabel: 'Vencida',
          textOfSelect: 'Facturado de este',
          initialValue: 'Trimestre',
          onPeriodChange: print,
        ),
        AppSpacing.vertical.s5,
        InvoicesPending(
          pendingInvoices: pendingInvoices,
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
        ),
        AppSpacing.vertical.s5,
        Invoices(
          invoices: invoices,
          viewType: type,
        ),
      ],
    );
  }
}
