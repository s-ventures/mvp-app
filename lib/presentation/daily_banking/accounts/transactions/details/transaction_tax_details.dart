import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/tax_transaction_details.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_actions_section.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionTaxDetails extends StatelessWidget {
  const TransactionTaxDetails({
    required this.transaction,
    super.key,
  });

  final DetailedAccountTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final details = transaction.details! as TaxTransactionDetails;
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
          titleStartDate: context.loc.dailyBankingTaxesMovementDetailsChargeDate,
          startDate: details.accrualDate.formatToDayMonthYear(),
          titleEndDate: context.loc.dailyBankingTaxesMovementDetailsPeriodImposed,
          endDate: details.paymentDate.formatToDayMonthYear(),
        ),
        AppSpacing.vertical.s5,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.loc.dailyBankingTaxesMovementDetailsNameIssuer,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.issuerName,
                style: context.textStyle.bodySmallRegular,
              ),
              AppSpacing.vertical.s4,
              Text(
                context.loc.dailyBankingTaxesMovementDetailsMandateReference,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.reference,
                style: context.textStyle.bodySmallRegular,
              ),
              AppSpacing.vertical.s4,
              Text(
                context.loc.dailyBankingTaxesMovementDetailsIdentifier,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.documentReference,
                style: context.textStyle.bodySmallRegular,
              ),
            ],
          ),
        ),
        AppSpacing.vertical.s5,
        MovementDetailsBankingInfo(
          type: BankAccountType.account,
          last4: transaction.accountNumber.lastFourCharacters,
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
