import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/claims_tab/details/widgets/claim_details_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/calculate_price_steps.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CommerceInsuranceCalculatePriceFirstStepPage extends StatelessWidget {
  const CommerceInsuranceCalculatePriceFirstStepPage({super.key});

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
              title: 'Capitales relativos a existencias',
              currentStep: 1,
              totalSteps: 2,
            ),
            AppSpacing.vertical.s6,
            ClaimDetailsListTile(
              title: 'Continente',
              trailingText: 10000.00.toCurrency(plusSign: false),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s3,
            ClaimDetailsListTile(
              title: 'Mobiliario',
              trailingText: 38000.00.toCurrency(plusSign: false),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s3,
            ClaimDetailsListTile(
              title: 'Avería de maquinaria y equipos',
              trailingText: 30000.00.toCurrency(plusSign: false),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s3,
            ClaimDetailsListTile(
              title: 'Existencias fijas',
              trailingText: 15000.00.toCurrency(plusSign: false),
              trailingType: ClaimDetailsType.currency,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                title: 'Siguiente',
                size: ButtonSize.small,
                onPressed: () => context.pushNamed(
                  AppRoute
                      .protectionInsuranceCommerceCalculatePriceSecondStep.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
