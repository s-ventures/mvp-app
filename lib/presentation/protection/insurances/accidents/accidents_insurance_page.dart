import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsurancePage extends StatelessWidget {
  const AccidentsInsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Protege tus ingresos',
                leading: Button(
                  icon: IconAssets.chevronLeft,
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
              Center(
                child: Text(
                  'Accidents Insurance',
                  style: context.textStyle.bodyMediumSemiBold,
                ),
              ),
              AppSpacing.vertical.s5,
              Button(
                title: 'Calcular precio',
                size: ButtonSize.small,
                onPressed: () async => context.pushNamed(
                  AppRoute
                      .protectionInsuranceAccidentCalculatePriceFirstStep.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
