import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardSettingsPage extends StatelessWidget {
  const CardSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                floating: true,
                pinned: true,
                centerTitle: true,
                title: 'Ajustes de tarjeta',
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
              ),
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              OutlinedList(
                children: [
                  Splash(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    onPressed: () => context.pushNamed(AppRoute.dailyBankingCardSettingsLimits.name),
                    child: ListTile(
                      title: Text(
                        'Límites de tarjeta',
                        style: context.textStyle.bodyMediumSemiBold,
                      ),
                      subtitle: Text(
                        'Establece límites de gasto',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
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
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    onPressed: () => context.pushNamed(AppRoute.dailyBankingCardSettingsAlias.name),
                    child: ListTile(
                      title: Text(
                        'Editar alias',
                        style: context.textStyle.bodyMediumSemiBold,
                      ),
                      subtitle: Text(
                        'Establece un nombre a tu tarjeta',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      trailing: IconSvg.small(IconAssets.chevronRight),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s6,
              Text(
                'Seguridad',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s3,
              OutlinedList(
                children: [
                  Splash(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(context.radius.soft),
                      topRight: Radius.circular(context.radius.soft),
                    ),
                    child: ListTile(
                      title: Text(
                        'Pagos online',
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Splash(
                    child: ListTile(
                      title: Text(
                        'Retiradas de cajeros',
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Splash(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(context.radius.soft),
                      bottomRight: Radius.circular(context.radius.soft),
                    ),
                    child: ListTile(
                      title: Text(
                        'Pagos contactless',
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s6,
              Button(
                title: 'Reportar robo o pérdida',
                size: ButtonSize.medium,
                background: context.color.error.withOpacity(0.15),
                foreground: context.color.error,
                onPressed: () async {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
