import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class SoonPayContactList extends StatelessWidget {
  const SoonPayContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                context.loc.dailyBankingSoonPayContacts,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            Button(
              icon: IconAssets.filter,
              type: ButtonType.outlined,
              size: ButtonSize.extraSmall,
              onPressed: () async {},
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        const FakeSearchBar(),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            ContactListTile(
              name: 'Thomas Magnum',
              leading: IconWithContainer(
                text: 'TM',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: IconAssets.soon,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: context.loc.dailyBankingSoonPaySupplier,
              typeForegroundColor: context.color.supplierForeground,
              typeBackgroundColor: context.color.supplierBackground,
              onPressed: () =>
                  context.pushNamed(AppRoute.dailyBankingSoonPayContact.name),
            ),
            ContactListTile(
              name: 'Alba García',
              leading: IconWithContainer(
                text: 'AG',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: IconAssets.soon,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: context.loc.dailyBankingSoonPayClient,
              typeForegroundColor: context.color.customerForeground,
              typeBackgroundColor: context.color.customerBackground,
              onPressed: () {},
            ),
            ContactListTile(
              name: 'Lucas Ross',
              leading: IconWithContainer(
                text: 'LR',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: IconAssets.soon,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: context.loc.dailyBankingSoonPaySupplier,
              typeForegroundColor: context.color.supplierForeground,
              typeBackgroundColor: context.color.supplierBackground,
              onPressed: () {},
            ),
            ContactListTile(
              name: 'Michael Knight',
              leading: IconWithContainer(
                text: 'MK',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: IconAssets.soon,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: context.loc.dailyBankingSoonPayClient,
              typeForegroundColor: context.color.customerForeground,
              typeBackgroundColor: context.color.customerBackground,
              onPressed: () {},
            ),
          ],
        ),
        AppSpacing.vertical.s7,
        Row(
          children: [
            Expanded(
              child: Text(
                context.loc.dailyBankingSoonPayFavorites,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            ContactListTile(
              name: 'Silvia Madariaga',
              leading: IconWithContainer(
                text: 'SM',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: IconAssets.star,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.radius.soft),
                topRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: context.loc.dailyBankingSoonPayClient,
              typeForegroundColor: context.color.customerForeground,
              typeBackgroundColor: context.color.customerBackground,
              onPressed: () {},
            ),
            ContactListTile(
              name: 'Carlos Ramos',
              leading: IconWithContainer(
                text: 'CR',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: IconAssets.star,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: context.loc.dailyBankingSoonPaySupplier,
              typeForegroundColor: context.color.supplierForeground,
              typeBackgroundColor: context.color.supplierBackground,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
