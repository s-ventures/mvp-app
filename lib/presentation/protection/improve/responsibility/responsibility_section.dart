import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_included.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_checkbox_list_tile.dart';
import 'package:ui_kit/ui_kit.dart';

class ResponsibilitySection extends StatelessWidget {
  const ResponsibilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPinnedOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        AppSpacing.vertical.s3.sliver,
        SliverPadding(
          padding: const EdgeInsets.all(AppSpacing.s5),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomCard(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cobertura total',
                            style: context.textStyle.buttonTabBar.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                          Text(
                            '50%',
                            style: context.textStyle.buttonTabBar.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.vertical.s5,
                      LinearProgressIndicator(
                        minHeight: 6,
                        value: 0.5,
                        backgroundColor:
                            context.color.statusWarning.withOpacity(.1),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          context.color.statusWarning,
                        ),
                        borderRadius:
                            BorderRadius.circular(context.radius.soft),
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s5,
                Text(
                  'Seguros recomendados',
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s5,
                ProtectionCustomCheckboxListTile(
                  title: 'Seguro de Responsabilidad Civil',
                  isChecked: true,
                  onPressed: print,
                  icon: IconWithContainer(
                    icon: IconAssets.security,
                    backgroundColor: context.color.neutralLight100,
                  ),
                  checkboxColor: CheckboxColor.secondary,
                ),
                AppSpacing.vertical.s5,
                ProtectionCustomCheckboxListTile(
                  title: 'Seguro de Ciberseguridad',
                  isChecked: true,
                  onPressed: print,
                  icon: IconWithContainer(
                    icon: IconAssets.security,
                    backgroundColor: context.color.neutralLight100,
                  ),
                  checkboxColor: CheckboxColor.secondary,
                ),
                AppSpacing.vertical.s5,
                const ProtectionCoverageIncluded(
                  coveragesIncluded: [
                    'Defensa y Fianzas',
                    'Seguridad de los sistemas informáticos y datos de caracter personal',
                    'Intrusión de terceros',
                    'Garantía de protección de datos',
                    'Responsabilidad civil por transmisión de virus o malware',
                    'Responsabilidad por publicación de contenidos en medios corporativos',
                  ],
                ),
                AppSpacing.vertical.s5,
                Button(
                  title: 'Calcular precio',
                  onPressed: () async {},
                  size: ButtonSize.small,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
