import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/upload_contacts/widgets/upload_contact_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class NewContactFromUploadPage extends StatelessWidget {
  const NewContactFromUploadPage({super.key});

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
            Container(
              padding: const EdgeInsets.all(AppSpacing.s6),
              decoration: ShapeDecoration(
                color: context.color.backgroundLight0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                  side: BorderSide(
                    color: context.color.strokeLigth100,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconSvg.medium(IconAssets.upload),
                  AppSpacing.vertical.s5,
                  Text(
                    'Selecciona contacto',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s1,
                  Text(
                    'Elige uno o varios archivos para subir.  ',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Button(
                    title: 'Seleccionar archivo',
                    size: ButtonSize.small,
                    expand: true,
                    onPressed: () async => UploadContactBottomSheet.show(
                      context: context,
                      onPressed: () => context.pushNamed(
                        AppRoute.contactsNewFromUploadDocumentsUploaded.name,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
