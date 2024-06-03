import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/list/filter_expenses_bottom_sheet/filter_expenses_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/expenses_status_color_extension.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Expenses extends StatelessWidget {
  const Expenses({
    required this.viewType,
    required this.expenses,
    super.key,
  });

  final SwitchViewType viewType;
  final AsyncValue<List<Expense>> expenses;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Gastos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Button(
              icon: IconAssets.filter,
              size: ButtonSize.extraSmall,
              type: ButtonType.outlined,
              onPressed: () => FilterExpensesBottomSheet.show(
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
            AppRoute.erpExpensesSearch.name,
          ),
        ),
        AppSpacing.vertical.s5,
        expenses.when(
          data: (expenses) {
            if (viewType == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: expenses.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final expense = expenses[index];

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
                itemCount: expenses.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final expense = expenses[index];

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
