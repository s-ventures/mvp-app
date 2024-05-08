import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverages.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/icon_title_info.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceContractedPage extends StatelessWidget {
  const AccidentsInsuranceContractedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              type: CustomAppBarType.logo,
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
            const IconTitleInfoMessage(
              icon: IconAssets.check,
              title: 'Seguro contratado',
              message:
                  '¡Enhorabuena has contratado el seguro de accidentes! Accede a tu cuenta para ver los detalles y disfrutar de la tranquilidad asegurada.',
            ),
            AppSpacing.vertical.s6,
            Text(
              'Seguro contratado',
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
                color: context.color.iconLight900,
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
            AppSpacing.vertical.s3,
            CustomCard.outlined(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tarifa',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  Text('220 €/mes', style: context.textStyle.bodySmallSemiBold),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: AppSpacing.s5,
            right: AppSpacing.s5,
            left: AppSpacing.s5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Button(
                icon: IconAssets.download,
                size: ButtonSize.small,
                type: ButtonType.outlined,
              ),
              AppSpacing.horizontal.s3,
              Expanded(
                child: Button(
                  title: 'Continuar',
                  size: ButtonSize.small,
                  onPressed: () async => context.goNamed(
                    AppRoute.protection.name,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
