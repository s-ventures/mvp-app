import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/detailed/detailed_card_transaction_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/widgets/upload_files_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTransactionDetailsPage extends ConsumerStatefulWidget {
  const CardTransactionDetailsPage({
    required this.cardContractId,
    required this.transactionId,
    super.key,
  });

  final int cardContractId;
  final int transactionId;

  @override
  ConsumerState<CardTransactionDetailsPage> createState() =>
      _CardTransactionDetailsPageState();
}

class _CardTransactionDetailsPageState
    extends ConsumerState<CardTransactionDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedCardTransactionControllerProvider.notifier).init(
              cardContractId: widget.cardContractId,
              transactionId: widget.transactionId,
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final transaction =
        ref.watch(detailedCardTransactionControllerProvider).transaction;
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: context.loc.commonMovementDetails,
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
                actions: [
                  CustomPopupMenuButton(
                    items: [
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(context.loc.commonSeeMoreReceipts),
                            const Spacer(),
                            IconSvg.small(IconAssets.invoice),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(context.loc.commonRefuseCollection),
                            const Spacer(),
                            IconSvg.small(IconAssets.xMark),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ];
          },
          body: transaction.when(
            data: (transaction) => ListView(
              padding: const EdgeInsets.all(AppSpacing.s5),
              children: [
                MovementDetailsSummary(
                  title: transaction.merchantName,
                  iconText: '💳',
                  iconBgColor: context.color.primaryLight100,
                  amount: transaction.amount,
                  date: transaction.postingDate,
                ),
                AppSpacing.vertical.s5,
                // TODO(georgeta): Mapa pendiente de implementar
                const MovementDetailsMap(
                  location: 'Madrid, España',
                ),
                AppSpacing.vertical.s5,
                const MovementDetailsBankingInfo(
                  type: BankAccountType.card,
                  // TODO(georgeta): Nos falta el numero de tarjeta en el DTO
                  last4: '1234',
                  icon: '🖥️',
                  category: 'Tecnología',
                ),
                AppSpacing.vertical.s5,
                MovementDetailsDescription(
                  text: transaction.description ?? '',
                ),
                AppSpacing.vertical.s5,
                const MovementDetailsVoucher(),
                AppSpacing.vertical.s5,
                CardMovementDetailsActions(
                  onUploadFilesPressed: () {
                    UploadFilesBottomSheet.show(context: context);
                  },
                  onCreateExpensePressed: () {
                    context.goNamed(AppRoute.negocio.name);
                  },
                ),
                AppSpacing.vertical.s5,
                const MovementDetailsGettingHelp(),
                AppSpacing.vertical.s5,
              ],
            ),
            error: (error, _) => Center(
              child: Text(
                error.toString(),
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.error,
                ),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
