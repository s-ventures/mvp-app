import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverages.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_checkbox_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/total_coverage.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

const List<Map<String, String>> coverageIncluded = [
  {
    'title': 'Siniestros y averías generales',
    'description':
        'Pariatur anim est excepteur aute labore labore aliqua sint est aute Lorem. Sunt minim commodo mollit est consectetur excepteur. Ipsum incididunt ad dolore Lorem ut. Voluptate tempor Lorem laborum sint eiusmod tempor nisi velit laboris laborum. Quis cupidatat reprehenderit do ut voluptate proident sint excepteur dolor consectetur et nulla ad. Anim reprehenderit elit cupidatat id aliqua. Tempor nulla ipsum ex et enim minim exercitation tempor velit commodo deserunt magna esse.',
  },
  {
    'title': 'Asistencia Informática',
    'description':
        'Id velit sint elit cillum sint elit incididunt velit laborum ad eu mollit cillum. Consectetur aliqua cillum sit eu id. Dolor laborum adipisicing non ea irure cupidatat veniam fugiat ad. Commodo id sit proident nisi ea aliqua laboris cupidatat. Laborum mollit dolor ut adipisicing ex minim aliquip aliquip magna. Amet sunt mollit minim qui laboris.',
  },
  {
    'title': 'Robo con y sin violencia',
    'description':
        'Aute nulla occaecat anim esse duis est non ipsum. Voluptate non officia do labore amet dolor enim sit laborum. Ut ut ullamco duis est occaecat aliqua.',
  },
  {
    'title': 'Daños Eléctricos',
    'description':
        'Qui nisi sunt excepteur quis adipisicing sunt duis do cillum culpa sit ullamco amet enim. Fugiat irure qui officia non officia sit. Est minim fugiat aliquip eu. Mollit ea laborum adipisicing labore ullamco eu pariatur Lorem velit.',
  },
  {
    'title': 'Avería de Maquinaria',
    'description':
        'Esse commodo consectetur dolore sunt sit magna non exercitation. Commodo anim incididunt eu sit in sunt id laboris irure pariatur est fugiat officia minim. In mollit incididunt amet eiusmod laborum eiusmod fugiat sunt exercitation sit ad.',
  },
  {
    'title': 'Roturas de cristales',
    'description':
        'Consectetur pariatur minim adipisicing proident non deserunt aliquip occaecat commodo magna adipisicing. Velit reprehenderit occaecat reprehenderit ex excepteur. Laborum fugiat laboris minim mollit reprehenderit et cupidatat aliqua. Officia dolor proident ex ea deserunt veniam fugiat eiusmod et amet laborum mollit. Ut aute deserunt irure eiusmod dolore deserunt dolor exercitation magna id ipsum sint. Dolore nulla aute est eiusmod quis nisi aute dolor labore sit irure id aliqua. Elit consectetur Lorem mollit cupidatat deserunt duis.',
  },
  {
    'title': 'Daños Estéticos',
    'description':
        'Esse Lorem consequat commodo voluptate in adipisicing et reprehenderit consequat. Nostrud reprehenderit aliquip ex mollit eiusmod et aliqua labore. Ipsum est ipsum amet magna proident. Pariatur in ullamco cillum amet est mollit irure do sit qui incididunt eu mollit.',
  },
  {
    'title': 'Responsabilidad Civil',
    'description':
        'In do elit occaecat dolor do sunt ullamco non sit consectetur cupidatat nostrud non. Excepteur Lorem tempor culpa magna duis quis anim amet Lorem sit. Irure voluptate in incididunt anim in cupidatat voluptate velit. Sit labore laborum anim nostrud proident amet ex proident reprehenderit duis est. Cillum id irure sint duis aliquip Lorem ad enim.',
  },
  {
    'title': 'Pérdida de Beneficios diaria',
    'description':
        'Consequat esse in Lorem non ex culpa sunt nulla velit in commodo. Labore irure occaecat sunt ut culpa sit. Voluptate ullamco cillum aute laborum. Dolore aliqua in amet non et tempor irure id pariatur adipisicing irure eu. Qui incididunt dolor veniam ut eiusmod id. Ex enim do sunt dolor ullamco.',
  },
  {
    'title': 'Desalojo Forzoso',
    'description':
        'Dolore amet non minim incididunt sint labore tempor eiusmod. Est cupidatat in officia ex voluptate laboris aute amet in reprehenderit reprehenderit sunt nisi exercitation. Nostrud esse reprehenderit quis tempor labore eu magna. Magna aliquip excepteur ea anim commodo.',
  },
];

class CommerceInsurancePage extends StatelessWidget {
  const CommerceInsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Protege tus activos',
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
                title: 'Seguro de Comercios',
                isChecked: true,
                onPressed: print,
                icon: IconWithContainer(
                  icon: IconAssets.security,
                  backgroundColor: context.color.neutralLight100,
                ),
                checkboxColor: CheckboxColor.secondary,
              ),
              AppSpacing.vertical.s5,
              const Coverages(
                title: 'Coberturas incluidas',
                coveragesIncludedWithDescription: coverageIncluded,
              ),
              AppSpacing.vertical.s5,
              Button(
                title: 'Calcular precio',
                size: ButtonSize.small,
                onPressed: () => context.pushNamed(
                  AppRoute
                      .protectionInsuranceCommerceCalculatePriceFirstStep.name,
                ),
              ),
              AppSpacing.vertical.s5,
              const HelpWithTheQuotation(),
            ],
          ),
        ),
      ),
    );
  }
}
