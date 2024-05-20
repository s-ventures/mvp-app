import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/detailed/detailed_sent_transfer_controller.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_actions_section.dart';
import 'package:ui_kit/ui_kit.dart';

class TransferSentDetailsPage extends ConsumerStatefulWidget {
  const TransferSentDetailsPage({
    required this.sentTransferId,
    super.key,
  });

  final int sentTransferId;

  @override
  ConsumerState<TransferSentDetailsPage> createState() => _TransferSentDetailsPageState();
}

class _TransferSentDetailsPageState extends ConsumerState<TransferSentDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedSentTransferControllerProvider.notifier).init(
              sentTransferId: widget.sentTransferId,
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sentTransfer = ref.watch(detailedSentTransferControllerProvider).sentTransfer;
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Detalles de movimiento',
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
                        onTap: () {}, // TODO(georgeta): Implementar funcionalidad
                        child: Row(
                          children: [
                            const Text('Ver mas recibos del emisor'),
                            const Spacer(),
                            IconSvg.small(IconAssets.invoice),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {}, // TODO(georgeta): Implementar funcionalidad
                        child: Row(
                          children: [
                            const Text('Recharzar cobro'),
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
          body: sentTransfer.when(
            data: (sentTransfer) {
              return ListView(
                padding: const EdgeInsets.all(AppSpacing.s5),
                children: [
                  MovementDetailsSummary(
                    title: sentTransfer.concept,
                    iconText: '🏦',
                    iconBgColor: context.color.secondaryLight600.withOpacity(.2),
                    amount: sentTransfer.settlementAmount != null
                        ? sentTransfer.settlementAmount! * -1
                        : 0.0,
                    date: sentTransfer.orderDate,
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsDate(
                    titleStartDate: 'Fecha cargo',
                    startDate: sentTransfer.orderDate.formatToDayMonthYear() ?? '-',
                    titleEndDate: 'Fecha abono',
                    endDate: sentTransfer.valueDate.formatToDayMonthYear() ?? '-',
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsBeneficiary(
                    name: sentTransfer.beneficiaryName,
                    accountNumber: sentTransfer.beneficiaryAccount.insertSpaceEveryFourCharacters,
                    transferType: sentTransfer.type.name,
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsBankingInfo(
                    type: BankAccountType.account,
                    // TODO(georgeta): No recibimos el numero de cuenta del emisor, pendiente de añadir y modificar
                    last4: sentTransfer.beneficiaryAccount.lastFourCharacters,
                    icon: '✈️', // TODO(georgeta): no recibimos el icono
                    category: 'Viajes', // TODO(georgeta): no recibimos la categoría
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsDescription(
                    text: sentTransfer.concept2 ?? sentTransfer.concept,
                  ),
                  AppSpacing.vertical.s5,
                  const MovementDetailsVoucher(),
                  AppSpacing.vertical.s5,
                  TransactionActionsSection(
                    // TODO(migalv): Add dynamic attachments
                    attachments: [],
                    onFileSelected: (file) {
                      // TODO(migalv): Add files
                      // attachments.length < controller.maxAttachments ? (file) => controller.addFiles([file]) : null,
                    },
                    onRemove: (attachment) {
                      // TODO(migalv): Add onRemove
                      // controller.removeFile,
                    },
                  ),
                  AppSpacing.vertical.s5,
                  const MovementDetailsGettingHelp(),
                  AppSpacing.vertical.s5,
                ],
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
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
