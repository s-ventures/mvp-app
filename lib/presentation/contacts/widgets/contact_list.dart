import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ContactListFilter { all, fav }

class ContactList extends StatelessWidget {
  const ContactList({
    super.key,
    this.title = 'Contactos',
    this.filteredBy = ContactListFilter.all,
  });

  final String title;
  final ContactListFilter filteredBy;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
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
              name: 'Juan Carlos',
              leading: IconWithContainer(
                text: 'JC',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: filteredBy == ContactListFilter.fav ? IconAssets.star : null,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.radius.soft),
                topRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: 'Cliente',
              typeForegroundColor: context.color.customerForeground,
              typeBackgroundColor: context.color.customerBackground,
              onTap: () {},
            ),
            ContactListTile(
              name: 'Thomas Magnum',
              leading: IconWithContainer(
                text: 'TM',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
                subIcon: filteredBy == ContactListFilter.fav ? IconAssets.star : null,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
              nif: '12345678A',
              type: 'Proveedor',
              typeForegroundColor: context.color.supplierForeground,
              typeBackgroundColor: context.color.supplierBackground,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
