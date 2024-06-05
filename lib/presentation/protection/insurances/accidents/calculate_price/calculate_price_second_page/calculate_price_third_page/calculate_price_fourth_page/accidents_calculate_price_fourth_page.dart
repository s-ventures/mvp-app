import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/calculate_price_steps.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/card_with_options.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceCalculatePriceFourthPage extends StatelessWidget {
  const AccidentsInsuranceCalculatePriceFourthPage({super.key});

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
              currentStep: 4,
              totalSteps: 4,
            ),
            AppSpacing.vertical.s6,
            Text(
              'Estado médico',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title: '¿Presenta invalidez, defecto físico, más de 12 dioptrías?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title:
                  '¿Presenta secuelas de enfermedad/accidentes o padece/ha padecido enfermedad grave o crónica?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title: '¿Le han prescrito alguna intervención quirúrgica en el último año?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title: '¿Le han prescrito algún tratamiento médico en el último año?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title: '¿Consume dos paquetes o más de cigarrillos o un litro de alcohol al día?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title: '¿Ha estado de baja 15 días o más por enfermedad en los dos últimos años?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title: '¿Ha sufrido alguna intervención quirúrgica en los últimos 3 años?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
            const CardWithBoolOptions(
              title:
                  '¿Está usted en estudio médico, recibiendo tratamiento, o pendiente de alguna prueba o resultado por cualquier motivo de salud?',
              initialValue: false,
            ),
            AppSpacing.vertical.s3,
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
                  AppRoute.protectionInsuranceAccidentCalculatePriceDataValidation.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
