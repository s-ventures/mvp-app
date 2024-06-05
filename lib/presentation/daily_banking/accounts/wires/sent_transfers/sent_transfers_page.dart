import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/simplified/simplified_sent_transfers_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/sent_transfers/widgets/filter_list_sent_transfers.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/sent_transfers/widgets/filter_sent_transfers_bottom_sheet/filter_sent_transfers_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/sent_transfers/widgets/sent_transfer_card.dart';
import 'package:ui_kit/ui_kit.dart';

class SentTransfersPage extends ConsumerStatefulWidget {
  const SentTransfersPage({super.key});

  @override
  ConsumerState<SentTransfersPage> createState() => _SentTransfersPageState();
}

class _SentTransfersPageState extends ConsumerState<SentTransfersPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedSentTransfersControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sentTransfers = ref.watch(
      simplifiedSentTransfersControllerProvider.select((value) => value.sentTransfers),
    );

    final controller = ref.read(simplifiedSentTransfersControllerProvider.notifier);
    final startDate = ref.watch(
      simplifiedSentTransfersControllerProvider.select((value) => value.startDate),
    );
    final endDate = ref.watch(
      simplifiedSentTransfersControllerProvider.select((value) => value.endDate),
    );
    final amountFrom = ref.watch(
      simplifiedSentTransfersControllerProvider.select((value) => value.amountFrom),
    );
    final amountTo = ref.watch(
      simplifiedSentTransfersControllerProvider.select((value) => value.amountTo),
    );

    final isFilterApplied =
        startDate != null || endDate != null || amountFrom != null || amountTo != null;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Transferencias enviadas',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {
                  context.pop();
                  await controller.resetFilters();
                },
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Recientes',
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
                      onPressed: () => FilterSentTransfersBottomSheet.show(
                        context: context,
                        onApply: controller.applyFilters,
                        onReset: controller.resetFilters,
                        setStartDate: controller.setStartDate,
                        setEndDate: controller.setEndDate,
                        setAmountFrom: controller.setAmountFrom,
                        setAmountTo: controller.setAmountTo,
                        startDate: startDate,
                        endDate: endDate,
                        amountFrom: amountFrom,
                        amountTo: amountTo,
                      ),
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
            const FakeSearchBar(),
            if (isFilterApplied)
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.s2),
                child: FilterListSentTransfers(
                  stateDate: startDate,
                  endDate: endDate,
                  amountFrom: amountFrom,
                  amountTo: amountTo,
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
                ),
              ),
            AppSpacing.vertical.s5,
            sentTransfers.when(
              data: (sentTransfers) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: sentTransfers.length,
                  itemBuilder: (context, index) {
                    final sentTransfer = sentTransfers[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppSpacing.s4,
                      ),
                      child: SentTransferCard(
                        sentTransfer: sentTransfer,
                      ),
                    );
                  },
                );
              },
              error: (error, _) => Center(
                child: Text(
                  error.toString(),
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.error,
                  ),
                ),
              ),
              loading: () => const Center(
                child: CustomLoader(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
