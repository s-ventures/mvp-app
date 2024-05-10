import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class NewContactFromAgendaPage extends StatelessWidget {
  const NewContactFromAgendaPage({super.key});

  String get _groupValue => 'Dori Doreau';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              type: CustomAppBarType.logo,
              leading: Button(
                icon: IconAssets.bell,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.user,
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
              'Contactos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            const FakeSearchBar(),
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                CustomRadioListTile(
                  title: 'Thomas Magnum',
                  subtitle: 'NIF: BO123456',
                  groupValue: _groupValue,
                  onChanged: (value) {},
                  value: 'Thomas Magnum',
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                ),
                CustomRadioListTile(
                  title: 'Dori Doreau',
                  subtitle: 'NIF: BO123456',
                  groupValue: _groupValue,
                  onChanged: (value) {},
                  value: 'Dori Doreau',
                ),
                CustomRadioListTile(
                  title: 'Kate Tanner',
                  subtitle: 'NIF: BO123456',
                  groupValue: _groupValue,
                  onChanged: (value) {},
                  value: 'Kate Tanner',
                ),
                CustomRadioListTile(
                  title: 'Alba Bosch',
                  subtitle: 'NIF: BO123456',
                  groupValue: _groupValue,
                  onChanged: (value) {},
                  value: 'Alba Bosch',
                ),
                CustomRadioListTile(
                  title: 'Phillip Dokidis',
                  subtitle: 'NIF: BO123456',
                  groupValue: _groupValue,
                  onChanged: (value) {},
                  value: 'Phillip Dokidis',
                ),
                CustomRadioListTile(
                  title: 'Jordyn Aminoff',
                  subtitle: 'NIF: BO123456',
                  groupValue: _groupValue,
                  onChanged: (value) {},
                  value: 'Jordyn Aminoff',
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
            title: 'Añadir',
            size: ButtonSize.small,
            onPressed: () async => AlertBottomSheet.show(
              context: context,
              icon: IconAssets.info,
              title: 'Campos incompletos',
              message: 'Falta información sobre este contacto',
              buttonOkText: 'Completar',
              onOkPressed: () async {},
              buttonCancelText: 'Lo haré más tarde',
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
