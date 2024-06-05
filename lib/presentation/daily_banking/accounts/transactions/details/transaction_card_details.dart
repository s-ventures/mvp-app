import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/detailed_card_transaction.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_actions_section.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionCardDetails extends StatelessWidget {
  const TransactionCardDetails({
    required this.transaction,
    super.key,
  });

  final DetailedAccountTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final details = transaction.details! as DetailedCardTransaction;
    final attachments = transaction.attachments;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        MovementDetailsSummary(
          title: details.merchantName,
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
          last4: details.cardEncryptedNumber.lastFourCharacters,
          icon: '🖥️',
          category: 'Tecnología',
        ),
        AppSpacing.vertical.s5,
        MovementDetailsDescription(
          text: transaction.description,
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
