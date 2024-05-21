import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/list/wdigets/approved.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/list/wdigets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesTab extends StatefulWidget {
  const ExpensesTab({
    super.key,
  });

  @override
  State<ExpensesTab> createState() => _ExpensesTabState();
}

class _ExpensesTabState extends State<ExpensesTab> {
  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        const ErpOverview(
          amount: 456,
          total: 789,
          percent: 1.2,
          greenValue: 189,
          greenLabel: 'Pagado',
          yellowValue: 89,
          yellowLabel: 'Pendiente',
          redValue: 23,
          redLabel: 'Imagado',
          onPeriodChange: print,
        ),
        AppSpacing.vertical.s5,
        ExpensesPending(
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
          items: const [
            {
              'title': 'Gasto 1',
              'date': '12/12/2021',
              'contact': 'Contacto 1',
              'amount': '123',
              'status': 'Pendiente',
            },
            {
              'title': 'Gasto 2',
              'date': '12/12/2021',
              'contact': 'Contacto 2',
              'amount': '123',
              'status': 'Pendiente',
            },
          ],
        ),
        AppSpacing.vertical.s5,
        ExpensesApproved(
          viewType: type,
          items: const [
            {
              'title': 'Gasto 1',
              'date': '12/12/2021',
              'contact': 'Contacto 1',
              'amount': '123',
              'status': 'Aprobado',
            },
            {
              'title': 'Gasto 2',
              'date': '12/12/2021',
              'contact': 'Contacto 2',
              'amount': '123',
              'status': 'Aprobado',
            },
          ],
        ),
      ],
    );
  }
}
