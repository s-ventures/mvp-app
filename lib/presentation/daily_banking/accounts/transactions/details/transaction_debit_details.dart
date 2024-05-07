import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/extended_transaction_details/debit_transaction_details.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/widgets/upload_files_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionDebitDetails extends StatelessWidget {
  const TransactionDebitDetails({
    required this.transaction,
    super.key,
  });

  final DetailedAccountTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final details = transaction.details! as DebitTransactionDetails;

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
          titleStartDate: 'Fecha pago',
          startDate: details.paymentDate.formatToDayMonthYear(),
          titleEndDate: 'Fecha cargo',
          endDate: details.dueDate.formatToDayMonthYear(),
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
                details.issuerName ?? '',
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
                details.issuer ?? '',
                style: context.textStyle.bodySmallRegular,
              ),
              AppSpacing.vertical.s4,
              Text(
                'Identificador',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.identification ?? '',
                style: context.textStyle.bodySmallRegular,
              ),
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
        MovementDetailsActions(
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
