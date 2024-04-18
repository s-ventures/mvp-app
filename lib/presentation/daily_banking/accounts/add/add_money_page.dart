import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Añadir dinero',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const CurrencyInput(),
                    AppSpacing.vertical.s3,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.s4,
                        vertical: AppSpacing.s1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(context.radius.hard),
                      ),
                      child: Row(
                        children: [
                          IconSvg.medium(
                            IconAssets.soon,
                            color: context.color.secondaryLight600,
                          ),
                          AppSpacing.horizontal.s5,
                          Text(
                            'Saldo 456,00 €',
                            style: context.textStyle.bodyMediumRegular,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s4,
              ),
              tileColor: context.color.backgroundLight0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: BorderSide(
                  color: context.color.strokeLigth100,
                ),
              ),
              title: Text(
                'Kutxabank',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              subtitle: Text(
                'VISA ··1234',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              leading: IconWithContainer(
                icon: IconAssets.wallet,
                backgroundColor: context.color.strokeLigth100,
              ),
              trailing: Text(
                'Cambiar',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.statusInfo,
                ),
              ),
              onTap: () => context.go(AppRoute.dailyBankingCardSettings.name),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Button(
            title: 'Añadir dinero',
            size: ButtonSize.small,
            onPressed: () async {},
          ),
        ),
      ),
    );
  }
}
