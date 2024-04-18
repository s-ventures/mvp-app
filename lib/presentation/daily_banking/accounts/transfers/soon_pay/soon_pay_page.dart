import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/soon_pay/widgets/soon_pay_contacts_list.dart';
import 'package:ui_kit/ui_kit.dart';

class SoonPayPage extends StatelessWidget {
  const SoonPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'soonPay',
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
          shrinkWrap: true,
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: const [
            SoonPayContactList(),
          ],
        ),
      ),
    );
  }
}
