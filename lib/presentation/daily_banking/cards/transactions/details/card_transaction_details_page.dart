import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/async/stream_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/detailed/detailed_card_transaction_controller.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/presentation/core/show_toast_mixin.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/localization/upload_attachments.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_actions_section.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTransactionDetailsPage extends ConsumerStatefulWidget {
  const CardTransactionDetailsPage({
    required this.cardContractId,
    required this.transactionId,
    super.key,
  });

  final String cardContractId;
  final String transactionId;

  @override
  ConsumerState<CardTransactionDetailsPage> createState() => _CardTransactionDetailsPageState();
}

class _CardTransactionDetailsPageState extends ConsumerState<CardTransactionDetailsPage>
    with ShowToastMixin {
  final PublishSubject<UploadFileFailure> _failureSubject = PublishSubject();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

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

    ref.listenManual(
      detailedCardTransactionControllerProvider.select((state) => state.uploadEvent),
      (_, event) {
        _handleEvent(event.getData());
      },
    );

    _failureSubject
        .throttleTime(kSnackBarDisplayDuration)
        .doOnData((failure) => showToastFailure(context, message: failure.localize()))
        .listenSafe(_compositeSubscription);
    super.initState();
  }

  @override
  void dispose() {
    _compositeSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(detailedCardTransactionControllerProvider.notifier);
    // TODO: Mostrar dinámicamente los detalle de la transacción
    final transaction = ref.watch(
      detailedCardTransactionControllerProvider.select((value) => value.transaction),
    );
    final attachments = ref.watch(
      detailedCardTransactionControllerProvider.select((value) => value.attachments),
    );

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
                MovementDetailsBankingInfo(
                  type: BankAccountType.card,
                  last4: transaction.cardEncryptedNumber.lastFourCharacters,
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
                TransactionActionsSection(
                  attachments: attachments,
                  onFileSelected: attachments.length < controller.maxAttachments
                      ? (file) => controller.addFiles([file])
                      : null,
                  onRemove: controller.removeFile,
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

  void _handleEvent(UploadEvent? event) {
    if (event == null) {
      return;
    }

    event.when(
      failure: _handleFailure,
      deleteFileSuccess: () => showSuccessToast(
        context,
        message: 'Documento adjunto eliminado',
      ),
    );
  }

  void _handleFailure(UploadFileFailure? failure) {
    if (failure == null) {
      return;
    }

    _failureSubject.add(failure);
  }
}
