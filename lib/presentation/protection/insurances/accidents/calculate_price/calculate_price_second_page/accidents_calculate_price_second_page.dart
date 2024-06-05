import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/calculate_price_steps.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_dropdown_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/text_input_into_container.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceCalculatePriceSecondPage extends StatefulWidget {
  const AccidentsInsuranceCalculatePriceSecondPage({super.key});

  @override
  State<AccidentsInsuranceCalculatePriceSecondPage> createState() =>
      _AccidentsInsuranceCalculatePriceSecondPageState();
}

class _AccidentsInsuranceCalculatePriceSecondPageState
    extends State<AccidentsInsuranceCalculatePriceSecondPage> {
  String _days = '15 días';

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
              currentStep: 2,
              totalSteps: 4,
            ),
            AppSpacing.vertical.s6,
            CustomDropdownListTile(
              title: 'Datos local',
              dropdownItems: [
                OutlinedList(
                  children: [
                    CustomRadioListTile(
                      title: '15 días',
                      value: '15 días',
                      groupValue: _days,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          context.radius.soft,
                        ),
                        topRight: Radius.circular(
                          context.radius.soft,
                        ),
                      ),
                      onChanged: (value) => setState(() {
                        _days = value as String;
                      }),
                    ),
                    CustomRadioListTile(
                      title: '30 días',
                      value: '30 días',
                      groupValue: _days,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          context.radius.soft,
                        ),
                        bottomRight: Radius.circular(
                          context.radius.soft,
                        ),
                      ),
                      onChanged: (value) => setState(() {
                        _days = value as String;
                      }),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Text(
              'Actividad laboral',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard.outlined(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salario neto acumulado últimos 12 meses',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  TextInputIntoContainer(
                    title: 'Salario',
                    initialValue: 10000.00.toCurrency(
                      plusSign: false,
                      showDecimals: false,
                      showSymbol: false,
                    ),
                    suffixText: '€',
                  ),
                ],
              ),
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
                  AppRoute.protectionInsuranceAccidentCalculatePriceThirdStep.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
