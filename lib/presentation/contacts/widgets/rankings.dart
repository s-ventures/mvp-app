import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit/ui_kit.dart';

class Rankings extends StatelessWidget {
  const Rankings({super.key});
  List<DropdownMenuItem<String>> get _dropdownItems {
    final menuItems = <DropdownMenuItem<String>>[
      const DropdownMenuItem(value: 'Mes', child: Text('Mes')),
      const DropdownMenuItem(value: 'Trimestre', child: Text('Trimestre')),
      const DropdownMenuItem(value: 'Año', child: Text('Año')),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SegmentedControl(
              values: const ['Impagos', 'Ingresos'],
              initialValue: 'Impagos',
              onChanged: print,
              widgetBuilder: (String value) {
                return Text(
                  value,
                  style: context.textStyle.buttonTabBar.copyWith(
                    color: context.color.textLight600,
                  ),
                );
              },
            ),
            const Spacer(),
            SizedBox(
              width: 72,
              child: DropdownButton(
                style: context.textStyle.bodySmallSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
                borderRadius: BorderRadius.circular(context.radius.soft),
                underline: Container(),
                elevation: 1,
                dropdownColor: context.color.backgroundLight0,
                icon: IconSvg.small(
                  IconAssets.sortline,
                  color: context.color.textLight600,
                ),
                isExpanded: true,
                isDense: true,
                value: 'Mes',
                items: _dropdownItems,
                onChanged: (String? value) {},
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        ContactRankingListTile(
          leading: TextAvatar(
            backgroundColor: context.color.neutralLight100,
            text: 'DD',
            textStyle: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          contact: 'Dori Doreau',
          amount: 983.00.toCurrency(plusSign: false),
          lineBarChart: const LineBarChart(
            greenValue: 789,
            greenLabel: 'Cobrado',
            yellowValue: 95,
            yellowLabel: 'Pendiente',
            redValue: 16,
            redLabel: 'Pagado',
          ),
        ),
        AppSpacing.vertical.s3,
        ContactRankingListTile(
          leading: TextAvatar(
            backgroundColor: context.color.neutralLight100,
            text: 'KT',
            textStyle: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          contact: 'Kate Tanner',
          amount: 357.00.toCurrency(plusSign: false),
          lineBarChart: const LineBarChart(
            greenValue: 789,
            greenLabel: 'Cobrado',
            yellowValue: 95,
            yellowLabel: 'Pendiente',
            redValue: 16,
            redLabel: 'Pagado',
          ),
        ),
        AppSpacing.vertical.s3,
        ContactRankingListTile(
          leading: TextAvatar(
            backgroundColor: context.color.neutralLight100,
            text: 'AB',
            textStyle: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          contact: 'Alba Bosch',
          amount: 234.00.toCurrency(plusSign: false),
          lineBarChart: const LineBarChart(
            greenValue: 789,
            greenLabel: 'Cobrado',
            yellowValue: 95,
            yellowLabel: 'Pendiente',
            redValue: 16,
            redLabel: 'Pagado',
          ),
        ),
      ],
    );
  }
}
