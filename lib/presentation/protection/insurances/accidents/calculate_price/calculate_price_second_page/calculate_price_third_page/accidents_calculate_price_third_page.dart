import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/calculate_price_steps.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/card_with_options.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_grid_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceCalculatePriceThirdPage extends StatefulWidget {
  const AccidentsInsuranceCalculatePriceThirdPage({super.key});

  @override
  State<AccidentsInsuranceCalculatePriceThirdPage> createState() =>
      _AccidentsInsuranceCalculatePriceThirdPageState();
}

class _AccidentsInsuranceCalculatePriceThirdPageState
    extends State<AccidentsInsuranceCalculatePriceThirdPage> {
  bool _isSportRisk = true;

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
              title: 'Caraacterísticas de riesgo',
              currentStep: 3,
              totalSteps: 4,
            ),
            AppSpacing.vertical.s6,
            Text(
              'Actividad física',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CardWithBoolOptions(
              title: '¿Practicas algún deporte de riesgo?',
              initialValue: true,
              onChanged: (value) => setState(() => _isSportRisk = value),
            ),
            if (_isSportRisk) ...[
              AppSpacing.vertical.s3,
              GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Escalada',
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Espeleología',
                    isSelected: true,
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Submarinismo (20 y 60 metros)',
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Hockey sobre hielo',
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Judo',
                    isSelected: true,
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Karate',
                    isSelected: true,
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Taekwondo',
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Lucha libre',
                    isSelected: true,
                  ),
                  CustomGridTile(
                    icon: IconAssets.xMark,
                    title: 'Caza mayor en extranjero',
                    isSelected: true,
                  ),
                ],
              ),
            ],
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
                  AppRoute
                      .protectionInsuranceAccidentCalculatePriceFourthStep.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
