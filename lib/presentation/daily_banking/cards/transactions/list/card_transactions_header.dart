import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/filter_account_transactions_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/filter_list.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTransactionsHeader extends StatelessWidget {
  const CardTransactionsHeader({
    required this.stateDate,
    required this.endDate,
    required this.amountFrom,
    required this.amountTo,
    required this.operationType,
    required this.category,
    required this.setStartDate,
    required this.setEndDate,
    required this.setAmountFrom,
    required this.setAmountTo,
    required this.setOperationType,
    required this.setCategory,
    required this.applyFilters,
    required this.resetFilters,
    required this.onPressed,
    super.key,
  });

  final DateTime? stateDate;
  final DateTime? endDate;
  final double? amountFrom;
  final double? amountTo;
  final TransactionOperationType operationType;
  final String category;
  final void Function(DateTime?) setStartDate;
  final void Function(DateTime?) setEndDate;
  final void Function(double?) setAmountFrom;
  final void Function(double?) setAmountTo;
  final void Function(TransactionOperationType) setOperationType;
  final void Function(String) setCategory;
  final Future<void> Function() applyFilters;
  final Future<void> Function() resetFilters;

  final Future<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
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
                context.loc.commonMovements,
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
                      onApply: applyFilters,
                      onReset: resetFilters,
                      stateDate: stateDate,
                      endDate: endDate,
                      amountFrom: amountFrom,
                      amountTo: amountTo,
                      operationType: operationType,
                      setStartDate: setStartDate,
                      setEndDate: setEndDate,
                      setAmountFrom: setAmountFrom,
                      setAmountTo: setAmountTo,
                      setTransactionType: setOperationType,
                      setCategory: setCategory,
                      categorySelected: category,
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
                setStartDate(null);
                setEndDate(null);
                applyFilters();
              },
              onClearAmountRange: () {
                setAmountFrom(null);
                setAmountTo(null);
                applyFilters();
              },
              onClearCreditDebit: () {
                setOperationType(TransactionOperationType.all);
                applyFilters();
              },
            ),
          ),
        AppSpacing.vertical.s3,
      ],
    );
  }
}
