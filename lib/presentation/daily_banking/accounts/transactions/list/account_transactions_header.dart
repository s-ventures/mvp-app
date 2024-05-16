import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/filter_account_transactions_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/filter_list.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountTransactionsHeader extends ConsumerWidget {
  const AccountTransactionsHeader({
    required this.onPressed,
    super.key,
  });

  final Future<void> Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(filterSimplifiedAccountTransactionsControllerProvider.notifier);
    final stateDate = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select((value) => value.startDate),
    );
    final endDate = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select((value) => value.endDate),
    );
    final amountFrom = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select((value) => value.amountFrom),
    );
    final amountTo = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select((value) => value.amountTo),
    );
    final operationType = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider.select((value) => value.operationType),
    );

    final isFilterApplied = stateDate != null ||
        endDate != null ||
        amountFrom != null ||
        amountTo != null ||
        operationType != TransactionOperationType.all;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Movimientos',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            Stack(
              children: [
                Button(
                  icon: IconAssets.filter,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {
                    await FilterAccountTransactionsBottomSheet.show<void>(
                      context: context,
                      onApply: controller.applyFilters,
                      onReset: controller.resetFilters,
                      stateDate: stateDate,
                      endDate: endDate,
                      amountFrom: amountFrom,
                      amountTo: amountTo,
                      operationType: operationType,
                      setStartDate: controller.setStartDate,
                      setEndDate: controller.setEndDate,
                      setAmountFrom: controller.setAmountFrom,
                      setAmountTo: controller.setAmountTo,
                      setTransactionType: controller.setOperationType,
                    );
                  },
                ),
                if (isFilterApplied)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.s2,
                        vertical: AppSpacing.s1,
                      ),
                      width: AppSpacing.s3,
                      height: AppSpacing.s3,
                      decoration: BoxDecoration(
                        color: context.color.statusError,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        FakeSearchBar(onPressed: onPressed),
        if (isFilterApplied)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.s2),
            child: FilterList(
              stateDate: stateDate,
              endDate: endDate,
              amountFrom: amountFrom,
              amountTo: amountTo,
              operationType: operationType,
              onClearDateRange: () {
                controller
                  ..setStartDate(null)
                  ..setEndDate(null)
                  ..applyFilters();
              },
              onClearAmountRange: () {
                controller
                  ..setAmountFrom(null)
                  ..setAmountTo(null)
                  ..applyFilters();
              },
              onClearCreditDebit: () {
                controller
                  ..setOperationType(TransactionOperationType.all)
                  ..applyFilters();
              },
            ),
          ),
        AppSpacing.vertical.s3,
      ],
    );
  }
}
