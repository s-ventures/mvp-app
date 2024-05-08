import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/widgets/contact_list.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/widgets/rankings.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Contacts extends ConsumerStatefulWidget {
  const Contacts({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactsPageState();
}

class _ContactsPageState extends ConsumerState<Contacts> {
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
                onPressed: () async {},
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
        body: Stack(
          children: [
            Positioned(
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.s5),
                children: [
                  const Rankings(),
                  AppSpacing.vertical.s6,
                  const ContactList(),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Button(
                icon: IconAssets.plus,
                size: ButtonSize.small,
                onPressed: () async => NewContactBottomSheet.show(
                  context: context,
                  onPressed: (type) {
                    switch (type) {
                      case NewContactType.manual:
                        context.pop();
                        context.pushNamed(AppRoute.contactsNewFromManual.name);
                      case NewContactType.agenda:
                        context.pop();
                        AlertBottomSheet.show(
                          context: context,
                          icon: IconAssets.security,
                          title: 'Acceso agenda',
                          message:
                              'Para acceder a tus contactos necesitamos permiso para leer tu agenda.',
                          buttonOkText: 'Aceptar',
                          onOkPressed: () async => context
                              .pushNamed(AppRoute.contactsNewFromAgenda.name),
                          buttonCancelText: 'Cancelar',
                          onCancelPressed: () async => context.pop(),
                        );
                      case NewContactType.upload:
                        context.pop();
                        context.pushNamed(AppRoute.contactsNewFromUpload.name);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
