import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/banking_info.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/beneficiary.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/dates.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/description.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/getting_help.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/summary.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/voucher.dart';
import 'package:ui_kit/ui_kit.dart';

class TransferSentDetailsPage extends StatelessWidget {
  const TransferSentDetailsPage({
    // required this.transferId,
    super.key,
  });

  // final String transferId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
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
          body: ListView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              TransferMovementSummary(
                title: 'Viaje Málaga',
                icon: '🏦',
                iconBgColor: context.color.secondaryLight600.withOpacity(.2),
                amount: -145,
                date: DateTime.now(),
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              Container(
                padding: const EdgeInsets.all(AppSpacing.s3),
                decoration: ShapeDecoration(
                  color: context.color.neutralLight100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Detalles del movimiento ',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      '· Mensual',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsBeneficiary(
                name: 'Shore2shore',
                accountNumber: 'ES12 1234 1234 1234 1234 1234',
                transferType: 'Inmediata',
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsDate(
                dateOfPayment: '2/10/2023',
                dateOfCharged: '2/10/2025',
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsBankingInfo(
                type: BankAccountType.account,
                last4: '1234',
                icon: '✈️',
                category: 'Viajes',
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsDescription(
                text: 'Viaje a Málaga',
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsVoucher(),
              AppSpacing.vertical.s5,
              const TransferDetailsGettingHelp(),
            ],
          ),
        ),
      ),
    );
  }
}
