import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/widgets/capital_data.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/widgets/capital_related_to_inventories.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/widgets/local_address.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/widgets/local_data.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/widgets/risk_characteristics.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/data_validation/holder_data_validation.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CommerceInsuranceCalculatePriceDataValidationPage extends StatelessWidget {
  const CommerceInsuranceCalculatePriceDataValidationPage({super.key});

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
                  icon: IconAssets.edit,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pushNamed(
                    AppRoute.protectionInsuranceCommerceCalculatePriceDataValidationEdit.name,
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            const ProtectionHolderDataValidation(
              fullName: 'Juan Pérez',
              province: 'Madrid',
              birthdate: '01/01/1990',
              gender: 'Hombre',
              nif: '12345678Z',
            ),
            AppSpacing.vertical.s6,
            const LocalAddressData('Calle Velazquez 100 bajo 2'),
            AppSpacing.vertical.s6,
            const LocalData(),
            AppSpacing.vertical.s6,
            const CapitalData(),
            AppSpacing.vertical.s6,
            const CapitalRelatedToInventoriesData(),
            AppSpacing.vertical.s6,
            const RiskCharacteristicsData(),
            AppSpacing.vertical.s6,
            const HelpWithTheQuotation(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          child: Button(
            title: 'Siguiente',
            size: ButtonSize.small,
            expand: true,
            onPressed: () => context.pushNamed(
              AppRoute.protectionInsuranceCommerceContract.name,
            ),
          ),
        ),
      ),
    );
  }
}
