import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/claims_tab/details/widgets/claim_details_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/policy_and_claims_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ClaimsDetailsPage extends StatelessWidget {
  const ClaimsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Detalles del siniestro',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.info,
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
            ProtectionPolicyAndClaimsListTile(
              icon: const IconWithContainer(
                text: '🖥️',
                backgroundColor: Color(0xFFE0E0E0),
              ),
              number: '123456',
              title: 'Protección de la actividad de tu negocio',
              type: PolicyAndClaimsType.policy,
              date: DateFormat('dd/MM/yyyy').format(DateTime.now()),
              onPressed: () => context.pushNamed(
                AppRoute.dailyBankingInsuranceClaimDetails.name,
              ),
            ),
            AppSpacing.vertical.s5,
            const ClaimDetailsListTile(
              title: 'Número de expediente',
              trailingText: '123456',
            ),
            AppSpacing.vertical.s3,
            const ClaimDetailsListTile(
              title: 'Fecha apertura',
              trailingText: '2/10/2023',
              trailingType: ClaimDetailsType.date,
            ),
            AppSpacing.vertical.s3,
            const ClaimDetailsListTile(
              title: 'Fecha inicio tramitación',
              trailingText: '2/10/2023',
              trailingType: ClaimDetailsType.date,
            ),
            AppSpacing.vertical.s3,
            const ClaimDetailsListTile(
              title: 'Fecha fin tramitación',
              trailingText: '5/8/2024',
              trailingType: ClaimDetailsType.date,
            ),
            AppSpacing.vertical.s3,
            const ClaimDetailsListTile(
              title: 'Estado de siniestro',
              trailingText: 'En curso',
              trailingType: ClaimDetailsType.status,
              trailingStatus: ClaimDetailsStatus.completed,
            ),
            AppSpacing.vertical.s3,
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.s4,
                  ),
                  title: Text(
                    'Situación de riesgo',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  subtitle: Text(
                    '----',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  leading: IconWithContainer(
                    icon: IconAssets.warning,
                    backgroundColor: context.color.backgroundLight200,
                  ),
                ),
                ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.s4,
                  ),
                  title: Text(
                    'Causa',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  subtitle: Text(
                    '----',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  leading: IconWithContainer(
                    icon: IconAssets.invoice,
                    backgroundColor: context.color.backgroundLight200,
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Text(
              'Encargado de reparación',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            Splash(
              borderRadius: BorderRadius.circular(context.radius.soft),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                  side: BorderSide(
                    color: context.color.strokeLigth100,
                  ),
                ),
                tileColor: context.color.backgroundLight0,
                dense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.s4,
                  vertical: AppSpacing.s3,
                ),
                title: const Text('Fontanería Martínez'),
                leading: IconWithContainer(
                  text: 'FM',
                  backgroundColor: context.color.backgroundLight200,
                ),
                trailing: IconSvg.small(
                  IconAssets.phone,
                  color: context.color.iconLight900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
