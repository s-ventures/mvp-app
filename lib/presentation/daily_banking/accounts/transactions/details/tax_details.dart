import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/extended_transaction_details/tax_transaction_details.dart';
import 'package:manifiesto_mvp_app/presentation/core/extensions/date_time_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class TaxDetails extends StatelessWidget {
  const TaxDetails({
    required this.transaction,
    super.key,
  });

  final DetailedAccountTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final details = transaction.details! as TaxTransactionDetails;

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        MovementDetailsSummary(
          title: transaction.description,
          iconText: '',
          iconBgColor: context.color.secondaryLight600.withOpacity(.2),
          amount: transaction.amount,
          date: transaction.date,
        ),
        AppSpacing.vertical.s5,
        CustomCard(
          outlined: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre del emisor',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                details.issuerName,
                style: context.textStyle.bodySmallRegular,
              ),
            ],
          ),
        ),
        AppSpacing.vertical.s5,
        MovementDetailsDate(
          titleStartDate: 'Fecha de cargo',
          startDate: details.accruaDate.formatToDayMonthYear(),
          titleEndDate: 'Periodo impuesto',
          endDate: details.paymentDate.formatToDayMonthYear(),
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
          text: transaction.userComments,
        ),
        AppSpacing.vertical.s5,
        const MovementDetailsVoucher(),
      ],
    );
  }
}
