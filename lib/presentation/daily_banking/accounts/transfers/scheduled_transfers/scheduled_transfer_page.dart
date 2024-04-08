import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/scheduled_transfers/widgets/filter_scheduled_transfers_bottom_sheet/filter_scheduled_transfers_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/scheduled_transfers/widgets/scheduled_transfer_card.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ScheduledTransfersPage extends StatelessWidget {
  const ScheduledTransfersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar(
              centerTitle: true,
              title: 'Transferencias programadas',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Recientes',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Button(
                      icon: IconAssets.filter,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () => FilterScheduledTransfersBottomSheet.show(
                        context: context,
                        onApply: () async {},
                        onReset: () async {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s3,
            const FakeSearchBar(),
            AppSpacing.vertical.s5,
            const ScheduledTransferCard(),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 144,
        child: Button(
          title: 'Nueva',
          icon: IconAssets.plus,
          size: ButtonSize.small,
          onPressed: () async => context.pushNamed(AppRoute.dailyBankingNationalTransfers.name),
        ),
      ),
    );
  }
}
