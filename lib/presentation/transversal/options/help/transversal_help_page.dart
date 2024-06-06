import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class TransversalHelpPage extends StatelessWidget {
  const TransversalHelpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Ayuda',
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
            OutlinedList(
              children: [
                Splash(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.soft),
                    topRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async => context.pushNamed(AppRoute.transversalHelpFaqs.name),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.s2,
                      horizontal: AppSpacing.s4,
                    ),
                    title: Text(
                      'FAQ',
                      style: context.textStyle.bodySmallRegular,
                    ),
                    trailing: IconSvg.small(IconAssets.chevronRight),
                  ),
                ),
                Splash(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.soft),
                    bottomRight: Radius.circular(context.radius.soft),
                  ),
                  onPressed: () async => AlertBottomSheet.show(
                    icon: IconAssets.info,
                    context: context,
                    title: 'Servicio de atención al cliente',
                    message:
                        'Vas a ponerte en contacto con el Servicio de atención al cliente de soon. ',
                    buttonOkText: 'Contactar',
                    buttonCancelText: 'Cancelar',
                    buttonCancelType: ButtonType.text,
                    buttonsOrientation: AlertButtonsOrientation.vertical,
                  ),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.s2,
                      horizontal: AppSpacing.s4,
                    ),
                    title: Text(
                      'Atención al cliente',
                      style: context.textStyle.bodySmallRegular,
                    ),
                    trailing: IconSvg.small(IconAssets.chevronRight),
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            OutlinedList(
              children: [
                Splash(
                  borderRadius: BorderRadius.circular(
                    context.radius.soft,
                  ),
                  onPressed: () async {},
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.s3,
                      horizontal: AppSpacing.s4,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.star,
                      backgroundColor: context.color.neutralLight100,
                    ),
                    title: Text(
                      'Puntúa la app',
                      style: context.textStyle.bodySmallRegular,
                    ),
                    trailing: IconSvg.small(IconAssets.chevronRight),
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
