import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverage_included.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/policy_and_claims_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/policy_billing.dart';
import 'package:ui_kit/ui_kit.dart';

const List<Map<String, String>> coverageIncluded = [
  {
    'title': 'Siniestros y averías generales',
    'description':
        'Ut tempor labore dolore cillum. Occaecat et consectetur anim eu. Lorem consequat veniam reprehenderit voluptate id.',
  },
  {
    'title': 'Asistencia Informática',
    'description':
        'Aliquip laborum excepteur veniam anim sunt proident. Cupidatat esse Lorem duis mollit consectetur do duis do cupidatat Lorem laboris. Mollit in aliquip aute voluptate consectetur cillum culpa consectetur nostrud cillum ea cupidatat consequat amet. Commodo consequat cupidatat pariatur culpa dolor cupidatat adipisicing sit cupidatat sint. Ea culpa enim sunt enim fugiat eu nisi sunt est pariatur enim. Minim fugiat ullamco pariatur deserunt nisi occaecat adipisicing laborum exercitation do.',
  },
  {
    'title': 'Robo con y sin violencia',
    'description':
        'Ea aute voluptate exercitation nulla duis reprehenderit et ex aliqua tempor nostrud. Do sit aliqua enim tempor duis consectetur qui excepteur id eu et quis sint. Est nulla voluptate dolor laboris exercitation dolor id ex elit mollit est enim amet aute. Voluptate laborum mollit dolore nostrud amet sint in laboris qui ex eu sunt.',
  },
  {
    'title': 'Daños Eléctricos',
    'description':
        'Amet ipsum ut elit fugiat elit. Dolore proident eu ad ut sit qui reprehenderit. Do ad proident reprehenderit amet aliquip quis. Commodo Lorem culpa incididunt deserunt et officia sint commodo. Culpa reprehenderit qui sint sunt. In cupidatat cupidatat ex anim veniam cillum dolore dolore cillum adipisicing anim exercitation.',
  },
  {
    'title': 'Avería de Maquinaria',
    'description':
        'Dolor sunt nisi adipisicing est labore et laborum id. Dolore ex voluptate ea tempor esse sit magna ex occaecat. Culpa deserunt mollit nostrud officia in id adipisicing dolor sit laborum sit laborum ea qui. Consectetur sunt exercitation ea nulla proident non ea sint consequat.',
  },
  {
    'title': 'Roturas de cristales',
    'description':
        'Elit officia ex consectetur est et qui amet nulla magna nisi eu officia. Laborum eu consequat consectetur anim. Proident esse sint magna sit consequat nisi laborum proident eiusmod exercitation ex ipsum ut. Lorem eiusmod aute qui elit officia enim laboris magna irure ea. Incididunt nostrud adipisicing fugiat aliquip nostrud consequat commodo velit. Id sit mollit ad enim magna duis officia irure. Elit sit est consequat sint consectetur sint irure veniam magna sint reprehenderit.',
  },
  {
    'title': 'Daños Estéticos',
    'description':
        'In amet culpa aliquip qui non proident ex elit in nostrud tempor culpa ullamco. Minim ad do incididunt labore pariatur aliquip esse velit. Mollit aliqua nulla anim eiusmod exercitation adipisicing voluptate voluptate est magna dolore.',
  },
  {
    'title': 'Responsabilidad Civil',
    'description':
        'Aute ad id et reprehenderit minim adipisicing dolore ex. Occaecat elit amet Lorem in labore laborum excepteur eiusmod sint. Incididunt ipsum laboris officia esse magna veniam nostrud nulla eu. Ad adipisicing irure cillum aliquip reprehenderit commodo cupidatat in sit. Ad ut laborum labore et incididunt consequat ea ipsum commodo consequat irure nulla. Duis ex exercitation pariatur labore consectetur commodo occaecat commodo adipisicing amet. Fugiat qui minim pariatur commodo cupidatat pariatur elit.',
  },
  {
    'title': 'Pérdida de Beneficios diaria',
    'description':
        'Dolor do ipsum et irure reprehenderit sit anim dolor eiusmod. Ut voluptate irure non sunt fugiat cillum veniam nulla anim ipsum esse velit. Irure proident adipisicing anim deserunt minim ad dolore. Qui quis Lorem consequat tempor sit enim cupidatat ut ullamco nostrud nisi quis.',
  },
  {
    'title': 'Desalojo Forzoso',
    'description':
        'Adipisicing ut commodo nulla consectetur pariatur ex elit sit ad occaecat ad cillum. Ullamco laborum qui id consequat consequat proident. Ex et do id ullamco ipsum duis.',
  },
];

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
                    coveragesIncludedWithDescription: coverageIncluded),
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
