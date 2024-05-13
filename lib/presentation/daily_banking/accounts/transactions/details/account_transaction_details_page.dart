import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/async/stream_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/detailed/detailed_account_transaction_controller.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/widgets/upload_attachments.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/localization/upload_attachments.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountTransactionDetailsPage extends ConsumerStatefulWidget {
  const AccountTransactionDetailsPage({
    required this.accountId,
    required this.transactionId,
    super.key,
  });

  final String accountId;
  final String transactionId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountTransactionDetailsPageState();
}

class _AccountTransactionDetailsPageState extends ConsumerState<AccountTransactionDetailsPage> {
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
      detailedAccountTransactionControllerProvider.select((state) => state.uploadFailure),
      (_, failure) {
        _handleFailure(failure.getData());
      },
    );

    _failureSubject
        .throttleTime(kSnackBarDisplayDuration)
        .doOnData(_showToastFailure)
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
                        onTap: () {},
                        child: Row(
                          children: [
                            const Text('Ver mas recibos del emisor'),
                            const Spacer(),
                            IconSvg.small(IconAssets.invoice),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {},
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
          body: transaction.when(
            data: (transaction) => ListView(
              padding: const EdgeInsets.all(AppSpacing.s5),
              children: [
                MovementDetailsSummary(
                  title: transaction.description,
                  iconText: '🏦',
                  iconBgColor: context.color.secondaryLight600.withOpacity(.2),
                  amount: transaction.amount,
                  date: transaction.date,
                  status: MovementStatus.completed,
                ),
                AppSpacing.vertical.s5,
                const MovementDetailsDate(
                  titleStartDate: 'Fecha pago',
                  startDate: '2/10/2023',
                  titleEndDate: 'Fecha cargo',
                  endDate: '2/10/2025',
                ),
                AppSpacing.vertical.s5,
                MovementDetailsBankingInfo(
                  type: BankAccountType.account,
                  last4: transaction.originBranch ?? '1234',
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
                MovementDetailsUploadAttachments(
                  attachments: attachments,
                  onFileSelected:
                      attachments.length < controller.maxAttachments ? (file) => controller.addFiles([file]) : null,
                  onRemove: controller.removeFile,
                ),
                AppSpacing.vertical.s5,
                const MovementDetailsCertificate(
                  type: CertificateType.debit,
                ),
                AppSpacing.vertical.s5,
                const MovementDetailsGettingHelp(),
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

  void _handleFailure(UploadFileFailure? failure) {
    if (failure == null) {
      return;
    }

    _failureSubject.add(failure);
  }

  void _showToastFailure(UploadFileFailure failure) {
    CustomToast.show(
      context,
      content: failure.localize(),
      type: ToastType.error,
    );
  }
}
