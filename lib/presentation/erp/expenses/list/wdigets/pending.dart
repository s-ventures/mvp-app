import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/expenses_status_color_extension.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesPending extends StatelessWidget {
  const ExpensesPending({
    required this.type,
    required this.setType,
    required this.pendingExpenses,
    super.key,
  });

  final SwitchViewType type;
  final void Function(SwitchViewType) setType;
  final AsyncValue<List<Expense>> pendingExpenses;

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
        pendingExpenses.when(
          data: (pendingExpenses) {
            if (type == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pendingExpenses.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final expense = pendingExpenses[index];

                  return ErpListTile(
                    title: expense.number,
                    date: expense.createdDate.formatToDayMonthYear(),
                    contact: expense.fullName,
                    amount: expense.totalAmount,
                    status: expense.status.groupedStatus(expense.dueDate),
                    statusColor: expense.status.statusColor(expense.dueDate, context),
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpExpensesDetails.name,
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
                itemCount: pendingExpenses.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final expense = pendingExpenses[index];

                  return ErpGridTile(
                    title: expense.number,
                    date: expense.createdDate.formatToDayMonthYear(),
                    contact: expense.fullName,
                    amount: expense.totalAmount,
                    status: expense.status.groupedStatus(expense.dueDate),
                    statusColor: expense.status.statusColor(expense.dueDate, context),
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpExpensesDetails.name,
                    ),
                  );
                },
              );
            }
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Center(
            child: Text(
              error.toString(),
            ),
          ),
        ),
      ],
    );
  }
}
