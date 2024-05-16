import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class TransferReceivedDetailsPage extends StatelessWidget {
  const TransferReceivedDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
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
                    items: [
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(context.loc.commonSeeMoreReceipts),
                            const Spacer(),
                            IconSvg.small(IconAssets.invoice),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(context.loc.commonRefuseCollection),
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
                title: 'Seguro IMQ',
                iconText: '🏦',
                iconBgColor: context.color.strokeLigth100,
                amount: -145,
                date: DateTime.now(),
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsOrdering(
                name: 'IMQ',
                accountNumber: 'ES1234567890123456789012',
              ),
              AppSpacing.vertical.s5,
              MovementDetailsDate(
                titleStartDate: context
                    .loc.dailyBankingTransfersReceivedMovementDetailsChargeDate,
                startDate: '2/10/2023',
                titleEndDate: context
                    .loc.dailyBankingTransfersReceivedMovementDetailsCreditDate,
                endDate: '2/10/2025',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsBankingInfo(
                type: BankAccountType.account,
                last4: '1234',
                icon: '🖥️',
                category: 'Viajes',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsDescription(
                text: 'Seguro IMQ',
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
