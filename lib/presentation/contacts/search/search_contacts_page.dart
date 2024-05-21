import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/search/widgets/filter_contacts_bottom_sheet/filter_contacts_bottom_sheet.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchContactsPage extends StatelessWidget {
  const SearchContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Buscar',
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.filter,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () => FilterContactsBottomSheet.show(
                    context: context,
                    onApply: () async {},
                    onReset: () async {},
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            const FakeSearchBar(),
            AppSpacing.vertical.s5,
            Text(
              'Contactos',
              style: context.textStyle.bodySmallSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            OutlinedList(
              children: [
                ContactListTile(
                  name: 'Juan Carlos',
                  leading: IconWithContainer(
                    text: 'JC',
                    foreground: context.color.textLight900,
                    backgroundColor: context.color.neutralLight100,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                  nif: '12345678A',
                  type: 'Cliente',
                  typeForegroundColor: context.color.customerForeground,
                  typeBackgroundColor: context.color.customerBackground,
                  onPressed: () {},
                ),
                ContactListTile(
                  name: 'Thomas Magnum',
                  leading: IconWithContainer(
                    text: 'TM',
                    foreground: context.color.textLight900,
                    backgroundColor: context.color.neutralLight100,
                    subIcon: IconAssets.star,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.soft),
                    bottomRight: Radius.circular(context.radius.soft),
                  ),
                  nif: '12345678A',
                  type: 'Proveedor',
                  typeForegroundColor: context.color.supplierForeground,
                  typeBackgroundColor: context.color.supplierBackground,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
