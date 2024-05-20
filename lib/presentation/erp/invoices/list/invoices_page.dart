import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/list/widgets/approved.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/list/widgets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class InvoicesTab extends StatefulWidget {
  const InvoicesTab({super.key});

  @override
  State<InvoicesTab> createState() => _InvoicesTabState();
}

class _InvoicesTabState extends State<InvoicesTab> {
  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
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
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
          items: const [
            {
              'title': 'F1/2023',
              'date': '02/23',
              'contact': 'Contacto 1',
              'amount': '123',
              'status': 'Vence en 2 días',
            },
            {
              'title': 'F1/2023',
              'date': '02/23',
              'contact': 'Contacto 2',
              'amount': '123',
              'status': 'Vence en 2 días',
            },
          ],
        ),
        AppSpacing.vertical.s5,
        const InvoicesApproved(
          viewType: SwitchViewType.list,
          items: [
            {
              'title': 'F1/2023',
              'date': '02/23',
              'contact': 'Contacto 1',
              'amount': '123',
              'status': 'Vence en 2 días',
            },
            {
              'title': 'F1/2023',
              'date': '02/23',
              'contact': 'Contacto 2',
              'amount': '123',
              'status': 'Vence en 2 días',
            },
          ],
        ),
      ],
    );
  }
}
