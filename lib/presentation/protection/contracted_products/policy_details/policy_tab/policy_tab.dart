import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_included.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/policy_and_claims_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/policy_billing.dart';
import 'package:ui_kit/ui_kit.dart';

class ContractedProductsPolicyDetailsTab extends StatelessWidget {
  const ContractedProductsPolicyDetailsTab({super.key});

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
                  icon: const IconWithContainer(
                    text: '🖥️',
                    backgroundColor: Color(0xFFE0E0E0),
                  ),
                  number: '123456',
                  title: 'Protección de la actividad de tu negocio',
                  type: PolicyAndClaimsType.policy,
                  date: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                ),
                AppSpacing.vertical.s5,
                DateRangeListTile.disabled(
                  startDateTitle: 'Emisión',
                  startDate: DateFormat('dd/MM/yyyy').format(
                    DateTime.now().subtract(
                      const Duration(days: 30),
                    ),
                  ),
                  endDateTitle: 'Vencimiento',
                  endDate: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                ),
                AppSpacing.vertical.s5,
                const ProtectionPolicyBilling(
                  billingData: [
                    {
                      'title': 'Cuantía',
                      'subtitle': 2640.00,
                      'icon': IconAssets.euro,
                    },
                    {
                      'title': 'Importe del último recibo',
                      'subtitle': 220.00,
                      'icon': IconAssets.invoice,
                    },
                    {
                      'title': 'Periodicidad de pago',
                      'subtitle': 'Mensualmente',
                      'icon': IconAssets.calendar,
                    },
                  ],
                ),
                AppSpacing.vertical.s5,
                const ProtectionCoverageIncluded(
                  coveragesIncluded: [
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
                AppSpacing.vertical.s5,
                OutlinedList(
                  children: [
                    Splash(
                      borderRadius: BorderRadius.circular(context.radius.soft),
                      onPressed: () async {},
                      child: ListTile(
                        leading: IconWithContainer(
                          icon: IconAssets.security,
                          backgroundColor: context.color.backgroundLight200,
                        ),
                        title: Text(
                          'Seguro de comercios',
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight900,
                          ),
                        ),
                        trailing: IconSvg.small(
                          IconAssets.download,
                          color: context.color.iconLight900,
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpacing.vertical.s5,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
