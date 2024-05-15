import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverages.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_card_radio_option.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceCommerceContractPaymentPage extends StatefulWidget {
  const InsuranceCommerceContractPaymentPage({super.key});

  @override
  State<InsuranceCommerceContractPaymentPage> createState() =>
      _InsuranceCommerceContractPaymentPageState();
}

class _InsuranceCommerceContractPaymentPageState
    extends State<InsuranceCommerceContractPaymentPage> {
  String _paymentPeriodGroupValue = 'annual';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Contratar',
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
            CustomCard(
              child: Text(
                'Hemos calculado el precio basado en los datos proporcionados.',
                textAlign: TextAlign.center,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            AppSpacing.vertical.s6,
            Text(
              'Forma de pago',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCardRadioOption(
              period: CardRadioOptionPeriod.annual,
              type: CardRadioOptionPayment.unique,
              price: '2160',
              fromDate: '12/01/2024',
              value: 'annual',
              groupValue: _paymentPeriodGroupValue,
              onPressed: (String value) =>
                  setState(() => _paymentPeriodGroupValue = value),
            ),
            AppSpacing.vertical.s3,
            CustomCardRadioOption(
              period: CardRadioOptionPeriod.semiannual,
              type: CardRadioOptionPayment.monthly,
              price: '190',
              fromDate: '12/01/2024',
              value: 'semiannual',
              groupValue: _paymentPeriodGroupValue,
              onPressed: (value) =>
                  setState(() => _paymentPeriodGroupValue = value),
            ),
            AppSpacing.vertical.s3,
            CustomCardRadioOption(
              period: CardRadioOptionPeriod.quarterly,
              type: CardRadioOptionPayment.monthly,
              price: '195',
              fromDate: '12/01/2024',
              value: 'quarterly',
              groupValue: _paymentPeriodGroupValue,
              onPressed: (value) =>
                  setState(() => _paymentPeriodGroupValue = value),
            ),
            AppSpacing.vertical.s6,
            Text(
              'Fecha de efecto',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard.outlined(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '12 Enero 2024',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  IconSvg(
                    IconAssets.calendar,
                    color: context.color.iconLight600,
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s6,
            Text(
              'Contractual',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
                vertical: AppSpacing.s3,
              ),
              tileColor: context.color.backgroundLight0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: BorderSide(
                  color: context.color.strokeLigth100,
                ),
              ),
              title: Text(
                'Seguro de comercios',
                style: context.textStyle.bodyMediumRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              leading: IconWithContainer(
                icon: IconAssets.security,
                backgroundColor: context.color.neutralLight100,
              ),
              trailing: IconSvg(
                IconAssets.download,
                color: context.color.iconLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            const Coverages(
              title: 'Coberturas incluidas',
              coverages: [
                'Siniestros y averías generales',
                'Asistencia Informática',
                'Robo con y sin violencia',
                'Daños Eléctricos',
                'Avería de Maquinaria',
                'Roturas de cristales',
                'Daños Estéticos',
                'Responsabilidad Civil',
                'Pérdida de Beneficios diaria',
                'Desalojo Forzoso',
              ],
            ),
            AppSpacing.vertical.s3,
            const Coverages(
              title: 'Coberturas añadidas',
              coverages: [
                'Accidentes corporales',
              ],
            ),
            AppSpacing.vertical.s5,
            const HelpWithTheQuotation(),
            AppSpacing.vertical.s8,
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
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
                title: 'Contratar',
                size: ButtonSize.small,
                onPressed: () => context.pushNamed(
                  AppRoute.protectionInsuranceCommerceContractPaymentOtp.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
