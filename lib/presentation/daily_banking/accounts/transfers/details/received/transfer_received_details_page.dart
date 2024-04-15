import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/banking_info.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/dates.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/description.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/getting_help.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/ordering.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/summary.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/widgets/voucher.dart';
import 'package:ui_kit/ui_kit.dart';

class TransferReceivedDetailsPage extends StatelessWidget {
  const TransferReceivedDetailsPage({
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
                title: 'Seguro IMQ',
                icon: '🏦',
                iconBgColor: context.color.strokeLigth100,
                amount: -145,
                date: DateTime.now(),
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsOrdering(
                name: 'IMQ',
                accountNumber: 'ES1234567890123456789012',
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
                icon: '🖥️',
                category: 'Viajes',
              ),
              AppSpacing.vertical.s5,
              const TransferDetailsDescription(
                text: 'Seguro IMQ',
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
