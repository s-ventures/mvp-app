import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
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
                title: context.loc.commonCertificates,
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
                context.loc.dailyBankingAccountsCertificatesRequestCertificates,
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
                        context.loc.dailyBankingAccountsCertificatesTitleTitle,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        context.loc
                            .dailyBankingAccountsCertificatesTitleDescription,
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
                        context.loc
                            .dailyBankingAccountsCertificatesAccountBalanceTitle,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        context.loc
                            .dailyBankingAccountsCertificatesAccountBalanceDescription,
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
                        context.loc.dailyBankingAccountsCertificatesCreditTitle,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        context.loc
                            .dailyBankingAccountsCertificatesCreditDescription,
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
                        context.loc.dailyBankingAccountsCertificatesDebitTitle,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      subtitle: Text(
                        context.loc
                            .dailyBankingAccountsCertificatesDebitDescription,
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
