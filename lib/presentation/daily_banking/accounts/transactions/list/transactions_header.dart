import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/operation_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/filter_account_transactions_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/filter_list.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionsHeader extends ConsumerWidget {
  const TransactionsHeader({
    required this.onPressed,
    super.key,
  });

  final Future<void> Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref
        .read(filterSimplifiedAccountTransactionsControllerProvider.notifier);
    final stateDate = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider
          .select((value) => value.startDate),
    );
    final endDate = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider
          .select((value) => value.endDate),
    );
    final amountFrom = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider
          .select((value) => value.amountFrom),
    );
    final amountTo = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider
          .select((value) => value.amountTo),
    );
    final operationType = ref.watch(
      filterSimplifiedAccountTransactionsControllerProvider
          .select((value) => value.operationType),
    );

    final isFilterApplied = stateDate != null ||
        endDate != null ||
        (amountFrom != null && amountTo != null) ||
        operationType != OperationType.all;

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
          const Padding(
            padding: EdgeInsets.only(top: AppSpacing.s2),
            child: FilterList(),
          ),
        AppSpacing.vertical.s3,
      ],
    );
  }
}
