import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/policy_and_claims_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContractedProductsClaimsDetailsTab extends StatelessWidget {
  const ContractedProductsClaimsDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPinnedOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
            context,
          ),
        ),
        AppSpacing.vertical.s3.sliver,
        SliverPadding(
          padding: const EdgeInsets.all(AppSpacing.s5),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProtectionPolicyAndClaimsListTile(
                  type: PolicyAndClaimsType.claim,
                  icon: IconWithContainer(
                    text: '🖥️',
                    backgroundColor: context.color.backgroundLight200,
                  ),
                  number: '123456',
                  title: 'Protección de la actividad de tu negocio',
                  status: PolicyAndClaimsStatus.inProgress,
                  onPressed: () => context.pushNamed(
                    AppRoute.protectionContractedProductsClaimDetails.name,
                  ),
                ),
                AppSpacing.vertical.s3,
                ProtectionPolicyAndClaimsListTile(
                  type: PolicyAndClaimsType.claim,
                  icon: const IconWithContainer(
                    text: '🛍️',
                    backgroundColor: Color(0xFFFEDEF4),
                  ),
                  number: '123456',
                  title: 'Protección de la actividad de tu negocio',
                  status: PolicyAndClaimsStatus.completed,
                  onPressed: () => context.pushNamed(
                    AppRoute.protectionContractedProductsClaimDetails.name,
                  ),
                ),
                AppSpacing.vertical.s5,
                Button(
                  title: 'Declarar un siniestro',
                  icon: IconAssets.support,
                  expand: true,
                  size: ButtonSize.small,
                  onPressed: () async => AlertBottomSheet.show(
                    context: context,
                    icon: IconAssets.support,
                    title: 'Servicio de atención al cliente',
                    message: 'Vas a ponerte en contacto con el Servicio de atención al cliente de soon.',
                    buttonOkText: 'Contactar',
                    buttonCancelText: 'Cancelar',
                    buttonsOrientation: AlertButtonsOrientation.vertical,
                    onOkPressed: () async => context.pop(''),
                    onCancelPressed: () async => context.pop(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
