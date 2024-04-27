import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/claims_tab/details/widgets/claim_details_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/calculate_price_steps.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceCalculatePriceFirstPage extends StatelessWidget {
  const AccidentsInsuranceCalculatePriceFirstPage({super.key});

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
              totalSteps: 4,
            ),
            AppSpacing.vertical.s6,
            ClaimDetailsListTile(
              title: 'Fallecimiento',
              trailingText: 10000.00.toCurrency(
                plusSign: false,
                showDecimals: false,
              ),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s3,
            ClaimDetailsListTile(
              title: 'Invalidez permanente',
              trailingText: 38000.00.toCurrency(
                plusSign: false,
                showDecimals: false,
              ),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s3,
            ClaimDetailsListTile(
              title: 'Asistencia sanitaria por accidente',
              trailingText: 50000.00.toCurrency(
                plusSign: false,
                showDecimals: false,
              ),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s3,
            ClaimDetailsListTile(
              title: 'Incapacidad temporal total',
              trailingText: 100000.00.toCurrency(
                plusSign: false,
                showDecimals: false,
              ),
              trailingType: ClaimDetailsType.currency,
            ),
            AppSpacing.vertical.s6,
            const HelpWithTheQuotation(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSpacing.s5,
            right: AppSpacing.s5,
            left: AppSpacing.s5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                title: 'Siguiente',
                size: ButtonSize.small,
                onPressed: () => context.pushNamed(
                  AppRoute
                      .protectionInsuranceAccidentCalculatePriceSecondStep.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
