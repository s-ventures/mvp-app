import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
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
              values: [
                context.loc.contactsSelectorUnpaid,
                context.loc.contactsSelectorIncome,
              ],
              initialValue: context.loc.contactsSelectorUnpaid,
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
                icon: IconSvg.extraSmall(
                  IconAssets.sortline,
                  color: context.color.iconLight600,
                ),
                isExpanded: true,
                isDense: true,
                value: context.loc.commonDateMonth,
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
          lineBarChart: LineBarChart(
            greenValue: 789,
            greenLabel: context.loc.commonUnpaid,
            yellowValue: 95,
            yellowLabel: context.loc.commonPending,
            redValue: 16,
            redLabel: context.loc.commonPaid,
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
          lineBarChart: LineBarChart(
            greenValue: 789,
            greenLabel: context.loc.commonCharged,
            yellowValue: 95,
            yellowLabel: context.loc.commonPending,
            redValue: 16,
            redLabel: context.loc.commonPaid,
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
          lineBarChart: LineBarChart(
            greenValue: 789,
            greenLabel: context.loc.commonCharged,
            yellowValue: 95,
            yellowLabel: context.loc.commonPending,
            redValue: 16,
            redLabel: context.loc.commonPaid,
          ),
        ),
      ],
    );
  }
}
