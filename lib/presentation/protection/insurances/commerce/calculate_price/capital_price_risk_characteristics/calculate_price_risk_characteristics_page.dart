import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/calculate_price_steps.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_grid_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CommerceInsuranceCalculatePriceSecondStepPage extends StatelessWidget {
  const CommerceInsuranceCalculatePriceSecondStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Calcular precio',
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.headPhones,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            const CalculatePriceSteps(
              title: 'Características de riesgo',
              currentStep: 1,
              totalSteps: 2,
            ),
            AppSpacing.vertical.s6,
            Text(
              '¿Con que medios de protección contra incendios cuentas?',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                CustomGridTile(
                  icon: IconAssets.extinguisher,
                  title: 'Extintores en áreas de incendio',
                ),
                CustomGridTile(
                  icon: IconAssets.fireHose,
                  title: 'Manguera contra incendios',
                  isSelected: true,
                ),
                CustomGridTile(
                  icon: IconAssets.fireHydrant,
                  title: 'Boca de incendio en el exterior',
                ),
                CustomGridTile(
                  icon: IconAssets.sprinkler,
                  title: 'Rociadores automáticos',
                ),
                CustomGridTile(
                  icon: IconAssets.smokeDetector,
                  title: 'Detectores automáticos de incendio',
                  isSelected: true,
                ),
                CustomGridTile(
                  icon: IconAssets.securityCam,
                  title: 'Vigilancia permanente',
                  isSelected: true,
                ),
              ],
            ),
            AppSpacing.vertical.s6,
            Text(
              '¿Qué medidas contra robos tienes?',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                CustomGridTile(
                  icon: IconAssets.door,
                  title: 'Puerta de seguridad',
                ),
                CustomGridTile(
                  icon: IconAssets.window,
                  title: 'Cristales de seguridad',
                  isSelected: true,
                ),
                CustomGridTile(
                  icon: IconAssets.siren,
                  title: 'Alarma conectada',
                  isSelected: true,
                ),
              ],
            ),
            AppSpacing.vertical.s6,
            const HelpWithTheQuotation(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: 'Volver',
                size: ButtonSize.small,
                type: ButtonType.text,
                onPressed: () async => context.pop(),
              ),
              Button(
                title: 'Siguiente',
                size: ButtonSize.small,
                onPressed: () => context.pushNamed(
                  AppRoute.protectionInsuranceCommerceCalculatePriceDataValidation.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
