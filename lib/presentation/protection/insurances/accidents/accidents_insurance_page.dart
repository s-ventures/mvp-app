import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_included.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_checkbox_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/total_coverage.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsurancePage extends StatelessWidget {
  const AccidentsInsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Protege tus ingresos',
                leading: Button(
                  icon: IconAssets.chevronLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
              ),
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              const CurrentCoverage(0.5),
              AppSpacing.vertical.s5,
              ProtectionCustomCheckboxListTile(
                title: 'Seguro de Accidentes',
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
                  coveragesIncludedWithDescription: [
                    {
                      'title': 'Cobertura de gastos médicos',
                      'description':
                          'Et dolore duis aliqua sunt excepteur aliquip irure veniam veniam. Eu laboris sit est ut exercitation id voluptate tempor exercitation laborum voluptate incididunt eiusmod minim. Labore pariatur adipisicing sit sint proident id incididunt.',
                    },
                    {
                      'title': 'Cobertura de incapacidad temporal',
                      'description':
                          'Enim mollit pariatur do culpa est nostrud. Id exercitation cupidatat in irure adipisicing ex nostrud consequat. Cillum ex do cupidatat duis cupidatat voluptate eiusmod non labore ullamco sit non non magna. In exercitation non labore aliquip nisi adipisicing cillum tempor minim laboris. Amet sint pariatur ipsum aliqua laborum nostrud eu eiusmod incididunt commodo elit duis minim.',
                    },
                    {
                      'title': 'Cobertura de incapacidad permanente',
                      'description':
                          'Laborum aliquip nulla aute do et ad ea. Aute ut in ad non commodo in id elit ea eu fugiat fugiat nostrud pariatur. Incididunt irure ullamco cillum duis ad culpa occaecat ullamco Lorem labore consectetur cupidatat esse.',
                    },
                    {
                      'title': 'Cobertura de fallecimiento',
                      'description':
                          'Incididunt irure sint excepteur amet occaecat sint Lorem. Id culpa consequat in dolore labore sint pariatur reprehenderit. Nisi sunt fugiat officia fugiat veniam nisi pariatur laborum est aliqua excepteur exercitation. Aute deserunt enim deserunt labore.',
                    },
                  ]),
              AppSpacing.vertical.s5,
              Button(
                title: 'Calcular precio',
                size: ButtonSize.small,
                onPressed: () async => context.pushNamed(
                  AppRoute
                      .protectionInsuranceAccidentCalculatePriceFirstStep.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
