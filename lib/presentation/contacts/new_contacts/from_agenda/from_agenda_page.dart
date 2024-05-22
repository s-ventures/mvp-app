import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class NewContactFromAgendaPage extends StatelessWidget {
  const NewContactFromAgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.contactsAddFromAgendaPageTitle,
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.edit,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Text(
              context.loc.contacts,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            const FakeSearchBar(),
            AppSpacing.vertical.s2,
            CustomCheckboxListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s3,
              ),
              borderRadius: BorderRadius.circular(context.radius.soft),
              controlAffinity: ListTileControlAffinity.leading,
              title: context.loc.contactsAddFromAgendaSelectContactsAll,
              onPressed: print,
            ),
            AppSpacing.vertical.s2,
            OutlinedList(
              children: [
                CustomCheckboxListTile(
                  title: 'Thomas Magnum',
                  subtitle: 'NIF: BO123456',
                  onPressed: print,
                  leading: IconWithContainer(
                    text: 'TM',
                    backgroundColor: context.color.neutralLight100,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                ),
                CustomCheckboxListTile(
                  title: 'Dori Doreau',
                  subtitle: 'NIF: BO123456',
                  leading: IconWithContainer(
                    text: 'DD',
                    backgroundColor: context.color.neutralLight100,
                  ),
                  value: true,
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Kate Tanner',
                  subtitle: 'NIF: BO123456',
                  leading: IconWithContainer(
                    text: 'KT',
                    backgroundColor: context.color.neutralLight100,
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Alba Bosch',
                  subtitle: 'NIF: BO123456',
                  leading: IconWithContainer(
                    text: 'AB',
                    backgroundColor: context.color.neutralLight100,
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Phillip Dokidis',
                  subtitle: 'NIF: BO123456',
                  leading: IconWithContainer(
                    text: 'PD',
                    backgroundColor: context.color.neutralLight100,
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Jordyn Aminoff',
                  subtitle: 'NIF: BO123456',
                  leading: IconWithContainer(
                    text: 'JA',
                    backgroundColor: context.color.neutralLight100,
                  ),
                  onPressed: print,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.soft),
                    bottomRight: Radius.circular(context.radius.soft),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          child: Button(
            title: context.loc.contactsAddFromAgendaAddButton,
            size: ButtonSize.small,
            onPressed: () async => AlertBottomSheet.show(
              context: context,
              icon: IconAssets.info,
              title: context.loc.contactsDetailsIncompleteFieldsModalTitle,
              message: context.loc.contactsDetailsIncompleteFieldsModalDescription,
              buttonOkText: context.loc.contactsDetailsIncompleteFieldsModalOkButton,
              onOkPressed: () async {},
              buttonCancelText: context.loc.contactsDetailsIncompleteFieldsModalCancelButton,
              buttonCancelType: ButtonType.text,
              onCancelPressed: () async => context.goNamed(
                AppRoute.contacts.name,
              ),
              buttonsOrientation: AlertButtonsOrientation.vertical,
            ),
          ),
        ),
      ),
    );
  }
}
