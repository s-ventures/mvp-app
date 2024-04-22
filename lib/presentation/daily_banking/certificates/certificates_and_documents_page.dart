import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CertificatesAndDocumentsPage extends StatelessWidget {
  const CertificatesAndDocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Certificados',
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
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              Text(
                'Solicitar certificados',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
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
                    child: ListTile(
                      title: Text(
                        'Certificado de titularidad',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        'Número CCC',
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      leading: IconWithContainer(
                        icon: IconAssets.document,
                        backgroundColor: context.color.strokeLigth100,
                      ),
                      trailing: IconSvg.small(
                        IconAssets.chevronRight,
                        color: context.color.primary,
                      ),
                    ),
                    onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingCertsAndDocumentsRequest.name,
                    ),
                  ),
                  Splash(
                    child: ListTile(
                      title: Text(
                        'Certificado saldo en cuenta',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        'Saldo en cuenta',
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      leading: IconWithContainer(
                        icon: IconAssets.document,
                        backgroundColor: context.color.strokeLigth100,
                      ),
                      trailing: IconSvg.small(
                        IconAssets.chevronRight,
                        color: context.color.primary,
                      ),
                    ),
                    onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingCertsAndDocumentsRequest.name,
                    ),
                  ),
                  Splash(
                    child: ListTile(
                      title: Text(
                        'Certificado de abono',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        'Ingreso en cuenta',
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      leading: IconWithContainer(
                        icon: IconAssets.document,
                        backgroundColor: context.color.strokeLigth100,
                      ),
                      trailing: IconSvg.small(
                        IconAssets.chevronRight,
                        color: context.color.primary,
                      ),
                    ),
                    onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingCertsAndDocumentsRequest.name,
                    ),
                  ),
                  Splash(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(context.radius.soft),
                      bottomRight: Radius.circular(context.radius.soft),
                    ),
                    child: ListTile(
                      title: Text(
                        'Certificado de adeudo',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        'Cargo en cuenta',
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      leading: IconWithContainer(
                        icon: IconAssets.document,
                        backgroundColor: context.color.strokeLigth100,
                      ),
                      trailing: IconSvg.small(
                        IconAssets.chevronRight,
                        color: context.color.primary,
                      ),
                    ),
                    onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingCertsAndDocumentsRequest.name,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
