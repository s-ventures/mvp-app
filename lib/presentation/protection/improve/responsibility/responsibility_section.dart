import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_included.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_checkbox_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/total_coverage.dart';
import 'package:ui_kit/ui_kit.dart';

const List<Map<String, String>> coverageIncluded = [
  {
    'title': 'Defensa y Fianzas',
    'description':
        'Anim mollit ad ut fugiat sit aute ullamco incididunt aute. Minim anim laborum nisi minim dolor laborum exercitation est anim excepteur laboris et deserunt commodo. Qui voluptate incididunt ullamco mollit pariatur laborum aute qui commodo. Anim adipisicing officia magna enim mollit quis ullamco occaecat aliqua aliqua nulla deserunt et et. Aute irure exercitation aute ad eiusmod tempor est dolor officia irure.',
  },
  {
    'title':
        'Seguridad de los sistemas informáticos y datos de caracter personal',
    'description':
        'Anim do nisi dolore consectetur magna in magna excepteur dolore enim. Aute nostrud consequat est esse adipisicing id incididunt proident incididunt consectetur. Nostrud qui aliqua proident reprehenderit ipsum cillum eiusmod duis voluptate ex ad. Irure ullamco ut magna ipsum.',
  },
  {
    'title': 'Intrusión de terceros',
    'description':
        'Laborum duis eu officia eu aliqua adipisicing et anim consequat quis ullamco in aliqua labore. Duis eu ipsum est commodo et. Sint laborum commodo labore veniam incididunt do non. Anim duis et aliqua ex ea ipsum ad enim est non consequat eu. Enim voluptate occaecat cillum minim ullamco. Qui non culpa ad ad velit Lorem laboris.',
  },
  {
    'title': 'Garantía de protección de datos',
    'description':
        'Irure esse Lorem cillum fugiat ut dolor proident sunt laboris in. Duis mollit commodo consectetur excepteur. Consectetur consequat deserunt excepteur voluptate enim commodo fugiat consequat quis consequat sunt sint.',
  },
  {
    'title': 'Responsabilidad civil por transmisión de virus o malware',
    'description':
        'Ipsum incididunt ad mollit duis elit sint excepteur dolor. Ex aliquip cupidatat ut occaecat. Cupidatat cillum laborum labore ea qui non consectetur consequat incididunt. Est aliquip eu sunt consectetur commodo dolore. Est ipsum elit Lorem magna ea aliquip quis dolor laboris ipsum enim ullamco nulla incididunt. Culpa occaecat non sint fugiat mollit ipsum do tempor.',
  },
  {
    'title':
        'Responsabilidad por publicación de contenidos en medios corporativos',
    'description':
        'Magna magna velit ullamco est quis minim enim enim. Esse cillum cupidatat proident velit nulla consectetur officia sit. Laborum do quis officia ipsum elit adipisicing. Fugiat excepteur cupidatat quis sit elit.',
  },
];

class ResponsibilitySection extends StatelessWidget {
  const ResponsibilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPinnedOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(AppSpacing.s5),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CurrentCoverage(0.5),
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
                  coveragesIncludedWithDescription: coverageIncluded,
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
