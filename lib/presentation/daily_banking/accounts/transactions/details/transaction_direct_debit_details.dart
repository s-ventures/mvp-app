import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/direct_debit_transaction_details.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_actions_section.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionDirectDebitDetails extends StatelessWidget {
  const TransactionDirectDebitDetails({
    required this.transaction,
    super.key,
  });

  final DetailedAccountTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final details = transaction.details! as DirectDebitTransactionDetails;
    final attachments = transaction.attachments;

    return ListView(
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
          titleStartDate: 'Fecha máxima devol.',
          startDate: transaction.postingDate.formatToDayMonthYear(),
          titleEndDate: 'Recibo devuelto',
          endDate: details.returnDate.formatToDayMonthYear(),
        ),
        AppSpacing.vertical.s5,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre emisor',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.issuer ?? '',
                style: context.textStyle.bodySmallRegular,
              ),
              AppSpacing.vertical.s4,
              Text(
                'Referencia mandato',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.debitReference ?? '',
                style: context.textStyle.bodySmallRegular,
              ),
              AppSpacing.vertical.s4,
            ],
          ),
        ),
        AppSpacing.vertical.s5,
        MovementDetailsBankingInfo(
          type: BankAccountType.account,
          last4: transaction.originBranch,
          icon: '🖥️',
          // category: transaction.category,
          category: 'Tecnología',
        ),
        AppSpacing.vertical.s5,
        MovementDetailsDescription(
          text: transaction.detailFields,
        ),
        AppSpacing.vertical.s5,
        const MovementDetailsVoucher(),
        AppSpacing.vertical.s5,
        TransactionActionsSection(
          attachments: attachments,
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
  }
}
