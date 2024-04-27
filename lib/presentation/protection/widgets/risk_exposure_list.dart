import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

List<Map<String, dynamic>> riskExposureList = [
  {
    'title': 'Protege tus activos',
    'path': AppRoute.protectionInsuranceCommerce.name,
    'items': [
      {
        'label': 'Local comercial',
        'active': true,
      },
      {
        'label': 'Existencias y stock',
        'active': true,
      },
      {
        'label': 'Mobiliario',
        'active': false,
      },
    ],
  },
  {
    'title': 'Protege tu responsabilidad',
    'path': AppRoute.protectionInsuranceResponsibility.name,
    'items': [
      {
        'label': 'Daños a terceros',
        'active': true,
      },
      {
        'label': 'Datos clientes',
        'active': true,
      },
      {
        'label': 'Reclamaciones',
        'active': true,
      },
    ],
  },
  {
    'title': 'Protege la salud',
    'path': AppRoute.protectionInsuranceHealth.name,
    'items': [
      {
        'label': 'Salud colaboradores',
        'active': false,
      },
      {
        'label': 'Accidente colaborador',
        'active': false,
      },
    ],
  },
  {
    'title': 'Protege tus ingresos',
    'path': AppRoute.protectionInsuranceAccident.name,
    'items': [
      {
        'label': 'Paralización de la actividad',
        'active': true,
      },
      {
        'label': 'Impagos clientes',
        'active': true,
      },
    ],
  },
  {
    'title': 'Protege tu ciberseguridad',
    'path': AppRoute.protectionInsuranceCybersecurity.name,
    'items': [
      {
        'label': 'Ciberataques',
        'active': false,
      },
      {
        'label': 'Robo de datos',
        'active': false,
      },
    ],
  },
];

class RiskExposureList extends StatelessWidget {
  const RiskExposureList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: riskExposureList.length,
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => AppSpacing.vertical.s5,
      itemBuilder: (context, index) {
        final riskExposure = riskExposureList[index];
        final itemsWidgets = _buildItemsWidgets(context, riskExposure);

        return CustomCard(
          outlined: true,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    riskExposure['title'] as String,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(
                        riskExposure['path'] as String,
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'Mejorar',
                          style: context.textStyle.buttonTabBar.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        AppSpacing.horizontal.s2,
                        IconSvg.small(
                          IconAssets.chevronRight,
                          color: context.color.iconLight600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s4,
              ...itemsWidgets,
              AppSpacing.vertical.s5,
              CustomLineBarsChart(
                bars: [
                  ..._getCustomLineBarChartList(
                    itemsWidgets: itemsWidgets,
                    riskExposure: riskExposure,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

List<Widget> _buildItemsWidgets(
  BuildContext context,
  Map<String, dynamic> riskExposure,
) {
  final itemsWidgets = <Widget>[];
  for (final item in riskExposure['items'] as Iterable<Map<String, dynamic>>) {
    itemsWidgets.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCheckbox.small(
            onChecked: (value) {},
            isChecked: item['active'] as bool,
            type: CheckboxType.circle,
            activeColor: CheckboxColor.tertiary,
          ),
          Expanded(
            child: Text(
              item['label'] as String,
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  return itemsWidgets;
}

List<CustomLineBarChart> _getCustomLineBarChartList({
  required List<Widget> itemsWidgets,
  required Map<String, dynamic> riskExposure,
}) {
  final activeItems = <bool>[];
  for (final item in riskExposure['items'] as Iterable<Map<String, dynamic>>) {
    activeItems.add(item['active'] as bool);
  }

  return itemsWidgets.map((item) {
    final index = itemsWidgets.indexOf(item);
    return CustomLineBarChart(
      color: activeItems.every((element) => element)
          ? CustomLineBarColor.success
          : activeItems.any((bool element) => element)
              ? CustomLineBarColor.warning
              : !activeItems.any((bool element) => element)
                  ? CustomLineBarColor.critical
                  : CustomLineBarColor.neutral,
      active: activeItems[index],
    );
  }).toList();
}
