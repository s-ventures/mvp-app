import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/erp/expenses/expenses_controller.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/list/wdigets/expenses.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/list/wdigets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesTab extends ConsumerStatefulWidget {
  const ExpensesTab({
    super.key,
  });

  @override
  ConsumerState<ExpensesTab> createState() => _ExpensesTabState();
}

class _ExpensesTabState extends ConsumerState<ExpensesTab> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(expensesControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(expensesControllerProvider);
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
          redLabel: 'Impagado',
          onPeriodChange: print,
        ),
        AppSpacing.vertical.s5,
        ExpensesPending(
          pendingExpenses: state.pendingExpenses,
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
        ),
        AppSpacing.vertical.s5,
        Expenses(
          viewType: type,
          expenses: state.expenses,
        ),
      ],
    );
  }
}
