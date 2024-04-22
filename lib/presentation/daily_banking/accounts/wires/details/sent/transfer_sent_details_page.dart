import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          body: ListView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              MovementDetailsSummary(
                title: 'Viaje Málaga',
                iconText: '🏦',
                iconBgColor: context.color.secondaryLight600.withOpacity(.2),
                amount: -145,
                date: DateTime.now(),
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsInfo(
                period: 'Mensual',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsBeneficiary(
                name: 'Shore2shore',
                accountNumber: 'ES12 1234 1234 1234 1234 1234',
                transferType: 'Inmediata',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsDate(
                titleStartDate: 'Fecha cargo',
                startDate: '2/10/2023',
                titleEndDate: 'Fecha abono',
                endDate: '2/10/2025',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsBankingInfo(
                type: BankAccountType.account,
                last4: '1234',
                icon: '✈️',
                category: 'Viajes',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsDescription(
                text: 'Viaje a Málaga',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsVoucher(),
              AppSpacing.vertical.s5,
              const MovementDetailsGettingHelp(),
            ],
          ),
        ),
      ),
    );
  }
}
