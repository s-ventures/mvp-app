import 'package:flutter/material.dart';
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
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Rankings ',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'impagos',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.statusInfo,
                    ),
                  ),
                ],
              ),
            ),
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
                  IconAssets.sort,
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
          amount: '983 €',
          lineBarChart: const LineBarChart(
            greenValue: 0.5,
            greenLabel: 'Cobrado',
            yellowValue: 0.3,
            yellowLabel: 'Pendiente',
            redValue: 0.2,
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
          amount: '357 €',
          lineBarChart: const LineBarChart(
            greenValue: 0.6,
            greenLabel: 'Cobrado',
            yellowValue: 0.3,
            yellowLabel: 'Pendiente',
            redValue: 0.1,
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
          amount: '234 €',
          lineBarChart: const LineBarChart(
            greenValue: 0.3,
            greenLabel: 'Cobrado',
            yellowValue: 0.4,
            yellowLabel: 'Pendiente',
            redValue: 0.3,
            redLabel: 'Pagado',
          ),
        ),
      ],
    );
  }
}
