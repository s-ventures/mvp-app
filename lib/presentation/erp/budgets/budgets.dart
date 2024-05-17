import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/approved.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/overview.dart';
import 'package:manifiesto_mvp_app/presentation/erp/budgets/widgets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class BudgetsTab extends StatefulWidget {
  const BudgetsTab({super.key});

  @override
  State<BudgetsTab> createState() => _BudgetsTabState();
}

class _BudgetsTabState extends State<BudgetsTab> {
  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        const BudgetsOverview(),
        AppSpacing.vertical.s5,
        BudgetsPending(
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
        ),
        AppSpacing.vertical.s5,
        BudgetsApproved(viewType: type),
      ],
    );
  }
}
