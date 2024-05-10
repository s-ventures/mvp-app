import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/detailed_card_transaction.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/widgets/upload_files_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
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
        const MovementDetailsBankingInfo(
          type: BankAccountType.card,
          // TODO(georgeta): Nos falta el numero de tarjeta en el DTO
          last4: '1234',
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
    );
  }
}
