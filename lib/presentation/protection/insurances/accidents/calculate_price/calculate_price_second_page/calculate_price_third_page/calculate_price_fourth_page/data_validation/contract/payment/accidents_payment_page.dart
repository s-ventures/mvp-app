import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverages.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_card_radio_option.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsurancePaymentPage extends StatelessWidget {
  const AccidentsInsurancePaymentPage({super.key});

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
              value: 'unique',
              groupValue: 'unique',
              onPressed: (value) {},
            ),
            AppSpacing.vertical.s3,
            CustomCardRadioOption(
              period: CardRadioOptionPeriod.semiannual,
              type: CardRadioOptionPayment.monthly,
              price: '190',
              fromDate: '12/01/2024',
              value: 'monthly',
              groupValue: 'unique',
              onPressed: (value) {},
            ),
            AppSpacing.vertical.s3,
            CustomCardRadioOption(
              period: CardRadioOptionPeriod.quarterly,
              type: CardRadioOptionPayment.monthly,
              price: '195',
              fromDate: '12/01/2024',
              value: 'monthly',
              groupValue: 'unique',
              onPressed: (value) {},
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
                'Seguro de accidentes',
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
                'Fallecimiento por accidente',
                'Invalidez por accidente',
                'Cobertura especial siniestros',
              ],
            ),
            AppSpacing.vertical.s3,
            const Coverages(
              title: 'Coberturas añadidas',
              coverages: [
                'Renta mensual por fallecimiento accidental',
                'Renta mensual por invalidez permanente absoluta accidental',
              ],
            ),
            AppSpacing.vertical.s5,
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
                  AppRoute.protectionInsuranceAccidentContractPaymentOtp.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
