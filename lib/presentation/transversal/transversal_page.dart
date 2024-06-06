import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/transversal/widgets/upload_profile_pic_bottom_sheet.dart';
import 'package:ui_kit/ui_kit.dart';

class TransversalPage extends StatelessWidget {
  const TransversalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Perfil',
              leading: Button(
                icon: IconAssets.xMark,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            CustomCard.outlined(
              radius: context.radius.hard,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () async => UploadProfilePicBottomSheet.show(
                      context: context,
                      handleCamera: () {
                        CustomToast.show(
                          context,
                          type: ToastType.success,
                          content: 'Foto de perfil subida correctamente.',
                          isDismissible: true,
                        );
                      },
                      handleGallery: () {
                        CustomToast.show(
                          context,
                          type: ToastType.error,
                          content: 'Ha ocurrido un error al subir la imagen.',
                          isDismissible: true,
                        );
                      },
                    ),
                    child: IconWithContainer(
                      backgroundColor: context.color.neutralLight100,
                      text: 'AR',
                      subIcon: IconAssets.camera,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Text('Alberto Rodriguez', style: context.textStyle.bodyMediumSemiBold),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            CustomCard.outlined(
              radius: context.radius.hard,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Perfil completado',
                    style: context.textStyle.bodyMediumSemiBold,
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    'Estás a un paso de completar tu perfil',
                    style: context.textStyle.bodySmallRegular,
                  ),
                  AppSpacing.vertical.s6,
                  CustomLineBarsChart(
                    children: [
                      for (int i = 1; i <= 4; i++)
                        CustomLineBarChart(
                          color: CustomLineBarColor.primary,
                          active: i <= 3,
                        ),
                    ],
                  ),
                  AppSpacing.vertical.s6,
                  Button(
                    title: 'Completar perfil',
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                    expand: true,
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                Splash(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.user,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Cuenta'),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                    ),
                  ),
                ),
                Splash(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.soft),
                    bottomRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.global,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Perfilado'),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                Splash(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.bell,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Alertas'),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                    ),
                  ),
                ),
                Splash(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.soft),
                    bottomRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.settings,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Ajustes'),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                Splash(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.gripSolid,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Plan'),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                    ),
                  ),
                ),
                Splash(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.soft),
                    bottomRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.info,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Ayuda'),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                Splash(
                  borderRadius: BorderRadius.all(
                    Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.s5,
                      vertical: AppSpacing.s3,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.exit,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: const Text('Cambiar de cuenta'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
