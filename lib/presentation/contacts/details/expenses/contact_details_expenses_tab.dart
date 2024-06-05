import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactDetailsExpensesTab extends StatelessWidget {
  const ContactDetailsExpensesTab({super.key});

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
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        CustomCard.outlined(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    320.00.toCurrency(plusSign: false),
                    style: context.textStyle.h5,
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
                        IconAssets.sortline,
                        color: context.color.textLight600,
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
              AppSpacing.vertical.s2,
              Text(
                context.loc.contactsDetailsRevenueAndExpensesResult,
                style: context.textStyle.bodySmallSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s5,
              LineBarChart(
                greenValue: 123,
                greenLabel: context.loc.commonCharged,
                yellowValue: 37,
                yellowLabel: context.loc.commonPending,
                redValue: 89,
                redLabel: context.loc.commonUnpaid,
              ),
            ],
          ),
        ),
        AppSpacing.vertical.s5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.loc.commonMovements,
              style: context.textStyle.bodySmallSemiBold.copyWith(
                color: context.color.textLight300,
              ),
            ),
            Text(
              '20/01/24',
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight300,
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            MovementListTile(
              title: 'Hotel Sevilla',
              subtitle: 'Soon · 10:29',
              amount: -102,
              balance: 456,
              icon: IconAssets.card,
              iconBackgroundColor: context.color.strokeLigth100,
              onPressed: () async {},
              borderRadius: MovementSplashRadius.top,
            ),
            MovementListTile(
              title: 'Tarjeta débito',
              subtitle: 'Soon · 10:29',
              amount: 84,
              balance: 558,
              icon: IconAssets.card,
              iconBackgroundColor: context.color.strokeLigth100,
              onPressed: () async {},
            ),
            MovementListTile(
              title: 'Agua',
              subtitle: 'Soon · 10:29',
              amount: -72,
              balance: 474,
              icon: IconAssets.card,
              iconBackgroundColor: context.color.strokeLigth100,
              onPressed: () async {},
              borderRadius: MovementSplashRadius.bottom,
            ),
          ],
        ),
      ],
    );
  }
}
