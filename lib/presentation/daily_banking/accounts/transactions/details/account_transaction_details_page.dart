import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/detailed/detailed_account_transaction_controller.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transaction_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_card_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_debit_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_direct_debit_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_tax_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_transfer_in_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/transaction_transfer_out_details.dart';
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
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AccountTransactionDetailsPageState();
}

class _AccountTransactionDetailsPageState
    extends ConsumerState<AccountTransactionDetailsPage> {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final transaction =
        ref.watch(detailedAccountTransactionControllerProvider).transaction;

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
            AccountTransactionType.tax =>
              TransactionTaxDetails(transaction: transaction),
            AccountTransactionType.card =>
              TransactionCardDetails(transaction: transaction),
            AccountTransactionType.debit =>
              TransactionDebitDetails(transaction: transaction),
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
                    iconBgColor:
                        context.color.secondaryLight600.withOpacity(.2),
                    amount: transaction.amount,
                    date: transaction.postingDate,
                  ),
                  AppSpacing.vertical.s5,
                  MovementDetailsDate(
                    titleStartDate:
                        context.loc.dailyBankingDebitMovementDetailsPaymentDate,
                    startDate: transaction.postingDate.formatToDayMonthYear(),
                    titleEndDate:
                        context.loc.dailyBankingDebitMovementDetailsChargeDate,
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
      };
}
