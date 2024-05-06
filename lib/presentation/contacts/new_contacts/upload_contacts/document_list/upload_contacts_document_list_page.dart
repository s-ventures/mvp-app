import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactsDocumentListPage extends StatelessWidget {
  const ContactsDocumentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Importar',
              leading: Button(
                icon: IconAssets.chevronLeft,
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
              'Contactos seleccionados',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
                vertical: AppSpacing.s1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: BorderSide(
                  color: context.color.strokeLigth100,
                ),
              ),
              tileColor: context.color.backgroundLight0,
              leading: IconWithContainer(
                icon: IconAssets.user,
                backgroundColor: context.color.backgroundLight200,
              ),
              title: Text(
                'Contacto.csv',
                style: context.textStyle.bodyMediumRegular,
              ),
              subtitle: Text(
                '28/11/23 - 100 KB',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              trailing: IconSvg.small(IconAssets.xMark),
              onTap: () async => context.go(
                '/contacts/new/upload-contacts/document-list',
              ),
            ),
            AppSpacing.vertical.s3,
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
                vertical: AppSpacing.s1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: BorderSide(
                  color: context.color.strokeLigth100,
                ),
              ),
              tileColor: context.color.backgroundLight0,
              leading: IconWithContainer(
                icon: IconAssets.user,
                backgroundColor: context.color.backgroundLight200,
              ),
              title: Text(
                'Contacto.csv',
                style: context.textStyle.bodyMediumRegular,
              ),
              subtitle: Text(
                '28/11/23 - 100 KB',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              trailing: IconSvg.small(IconAssets.xMark),
              onTap: () async => context.go(
                '/contacts/new/upload-contacts/document-list',
              ),
            ),
            AppSpacing.vertical.s4,
            GestureDetector(
              onTap: () async => context.go(
                '/contacts/new/upload-contacts/document-list',
              ),
              child: Text(
                'Añadir archivo',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.statusInfo,
                ),
              ),
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
            title: 'Subir archivo',
            size: ButtonSize.small,
            onPressed: () async => AlertBottomSheet.show(
              context: context,
              icon: IconAssets.check,
              title: 'Envío completado',
              message: 'Archivo subido con éxito.',
              buttonOkText: 'Continuar',
              onOkPressed: () => context.goNamed(AppRoute.contacts.name),
            ),
          ),
        ),
      ),
    );
  }
}
