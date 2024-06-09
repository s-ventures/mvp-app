import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverages.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_dropdown_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class TransversalPlanPage extends StatelessWidget {
  const TransversalPlanPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Tu Plan',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.settings,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pushNamed(
                    AppRoute.transversalPlan.name,
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            CustomCard.outlined(
              child: Row(
                children: [
                  const SizedBox(
                    height: 38,
                    child: CreditCard(
                      plan: CreditCardPlan.basic,
                      type: CreditCardType.physical,
                      last4Digits: '1234',
                      size: CreditCardSize.extraSmall,
                    ),
                  ),
                  AppSpacing.horizontal.s4,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('soon Basic', style: context.textStyle.bodyMediumSemiBold),
                      Text(
                        'Miembro desde Enero 2023',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                          // fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            Button(
              title: 'Mejorar',
              size: ButtonSize.small,
              onPressed: () async => context.pushNamed(
                AppRoute.transversalPlanUpgrade.name,
              ),
            ),
            AppSpacing.vertical.s5,
            Text(
              'Detalles de tu plan',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            OutlinedList(
              children: [
                ListTile(
                  title: Text(
                    'Plan',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  subtitle: Text(
                    'Basic',
                    style: context.textStyle.bodySmallRegular,
                  ),
                  leading: IconWithContainer(
                    icon: IconAssets.soon,
                    size: IconWithContainerSize.medium,
                    backgroundColor: context.color.neutralLight100,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Facturación',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  subtitle: Text(
                    '12 €/mes',
                    style: context.textStyle.bodySmallRegular,
                  ),
                  leading: IconWithContainer(
                    icon: IconAssets.invoice,
                    backgroundColor: context.color.neutralLight100,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Proximo pago',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  subtitle: Text(
                    '3 Junio, 2023',
                    style: context.textStyle.bodySmallRegular,
                  ),
                  leading: IconWithContainer(
                    icon: IconAssets.calendar,
                    backgroundColor: context.color.neutralLight100,
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Text(
              'Servicios incluidos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title: 'Cuenta',
              leading: IconWithContainer(
                icon: IconAssets.file,
                backgroundColor: context.color.neutralLight100,
              ),
              nextToCollapse: true,
              nextToCollapseColor: context.color.backgroundLight0,
              nextToCollapsePadding: 0,
              outlined: false,
              dropdownItems: const [
                Coverages(
                  outlined: false,
                  coverages: [
                    'Cuenta 100% digital y remunerada al 4,5 - 5 %',
                    'Devolución del 3 % de los recibos y gastos domiciliados',
                    'Transferencias instantáneas y soonpay (próximamente Bizum)',
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              title: 'Métodos de pago',
              leading: IconWithContainer(
                icon: IconAssets.card,
                backgroundColor: context.color.neutralLight100,
              ),
              nextToCollapse: true,
              nextToCollapseColor: context.color.backgroundLight0,
              nextToCollapsePadding: 0,
              outlined: false,
              dropdownItems: const [
                Coverages(
                  outlined: false,
                  coverages: [
                    'Tarjeta de débito (tarjeta virtual y tarjeta física personalizada)',
                    'Retiradas gratuitas en toda la red de cajeros de ServiRed',
                    'Pagos móviles / contactless a través del wallet',
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              title: 'Protección',
              leading: IconWithContainer(
                icon: IconAssets.security,
                backgroundColor: context.color.neutralLight100,
              ),
              nextToCollapse: true,
              nextToCollapseColor: context.color.backgroundLight0,
              nextToCollapsePadding: 0,
              outlined: false,
              dropdownItems: const [],
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              title: 'Gestión del negocio',
              leading: IconWithContainer(
                icon: IconAssets.gripSolid,
                backgroundColor: context.color.neutralLight100,
              ),
              nextToCollapse: true,
              nextToCollapseColor: context.color.backgroundLight0,
              nextToCollapsePadding: 0,
              outlined: false,
              dropdownItems: const [],
            ),
          ],
        ),
      ),
    );
  }
}
