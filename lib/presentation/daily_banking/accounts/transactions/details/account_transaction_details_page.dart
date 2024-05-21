import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/async/stream_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/detailed/detailed_account_transaction_controller.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transaction_type.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/presentation/core/show_toast_mixin.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_card_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_debit_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_direct_debit_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_tax_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_transfer_in_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_transfer_out_details.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/localization/upload_attachments.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_attachments_section.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountTransactionDetailsPage extends ConsumerStatefulWidget {
  const AccountTransactionDetailsPage({
    required this.accountId,
    required this.transactionId,
    required this.type,
    super.key,
  });

  final String accountId;
  final String transactionId;
  final AccountTransactionType type;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountTransactionDetailsPageState();
}

class _AccountTransactionDetailsPageState extends ConsumerState<AccountTransactionDetailsPage>
    with ShowToastMixin {
  final PublishSubject<UploadFileFailure> _failureSubject = PublishSubject();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedAccountTransactionControllerProvider.notifier).init(
              widget.accountId,
              widget.transactionId,
            ),
      );
    });

    ref.listenManual(
      detailedAccountTransactionControllerProvider.select((state) => state.uploadEvent),
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
    final controller = ref.watch(detailedAccountTransactionControllerProvider.notifier);
    final transaction = ref.watch(
      detailedAccountTransactionControllerProvider.select((value) => value.transaction),
    );
    final attachments = ref.watch(
      detailedAccountTransactionControllerProvider.select((value) => value.attachments),
    );

    return Scaffold(
      body: NestedScrollView(
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
                  items: _actions,
                ),
              ],
            ),
          ];
        },
        body: transaction.when(
          data: (transaction) => switch (widget.type) {
            AccountTransactionType.tax => TransactionTaxDetails(transaction: transaction),
            AccountTransactionType.card => TransactionCardDetails(transaction: transaction),
            AccountTransactionType.debit => TransactionDebitDetails(transaction: transaction),
            AccountTransactionType.directDebit =>
              TransactionDirectDebitDetails(transaction: transaction),
            AccountTransactionType.transferIn =>
              TransactionTransferInDetails(transaction: transaction),
            AccountTransactionType.transferOut =>
              TransactionTransferOutDetails(transaction: transaction),
            AccountTransactionType.other => ListView(
                padding: const EdgeInsets.all(AppSpacing.s5),
                children: [
                  MovementDetailsSummary(
                    title: transaction.description,
                    iconText: '🏦',
                    iconBgColor: context.color.secondaryLight600.withOpacity(.2),
                    amount: transaction.amount,
                    date: transaction.postingDate,
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsDate(
                    titleStartDate: context.loc.dailyBankingDebitMovementDetailsPaymentDate,
                    startDate: transaction.postingDate.formatToDayMonthYear(),
                    titleEndDate: context.loc.dailyBankingDebitMovementDetailsChargeDate,
                    endDate: transaction.valueDate.formatToDayMonthYear(),
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsBankingInfo(
                    type: BankAccountType.account,
                    // TODO(georgeta): Nos falta el numero de cuenta en el DTO
                    last4: transaction.originBranch,
                    icon: '🖥️',
                    // category: transaction.category,
                    category: 'Tecnología',
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsDescription(
                    text: transaction.userComments,
                  ),
                  AppSpacing.vertical.s5,
                  const MovementDetailsVoucher(),
                  AppSpacing.vertical.s5,
                  TransactionAttachmentsSection(
                    title: 'Adjuntos',
                    attachments: attachments,
                    onFileSelected: attachments.length < controller.maxAttachments
                        ? (file) => controller.addFiles([file])
                        : null,
                    onRemove: controller.removeFile,
                  ),
                  AppSpacing.vertical.s5,
                  const MovementDetailsCertificate(
                    type: CertificateType.debit,
                  ),
                  AppSpacing.vertical.s5,
                  const MovementDetailsGettingHelp(),
                  AppSpacing.vertical.s5,
                ],
              ),
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
    );
  }

  void _handleEvent(UploadEvent? event) {
    if (event == null) {
      return;
    }

    event.when(
      failure: _handleFailure,
      deleteFileSuccess: () => _handleSuccess(context.loc.commonAttachmentDeleted),
    );
  }

  void _handleSuccess(String message) {
    CustomToast.show(
      context,
      content: message,
      type: ToastType.success,
    );
  }

  void _handleFailure(UploadFileFailure? failure) {
    if (failure == null) {
      return;
    }

    _failureSubject.add(failure);
  }

  List<PopupMenuEntry<dynamic>> get _actions => switch (widget.type) {
        AccountTransactionType.transferIn ||
        AccountTransactionType.transferOut ||
        AccountTransactionType.tax ||
        AccountTransactionType.debit ||
        AccountTransactionType.directDebit ||
        AccountTransactionType.card ||
        AccountTransactionType.other =>
          [
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
      };
}
