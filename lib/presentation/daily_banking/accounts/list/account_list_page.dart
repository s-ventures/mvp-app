import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/aggregation/aggregation_controller.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AccountListPage extends ConsumerWidget {
  const AccountListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aggregationController = ref.read(aggregationControllerProvider.notifier);
    ref.watch(aggregationControllerProvider).aggregationServiceUrl.when(
          data: (url) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.pushNamed(
                AppRoute.webView.name,
                extra: WebViewPageRouteParams(
                  title: 'Agregar cuenta',
                  url: url,
                  onNavigationRequest: (request) {
                    final navigate = !aggregationController.tryParseCredentialsId(request.url);
                    if (navigate) {
                      return NavigationDecision.navigate;
                    } else {
                      context.pop();
                      return NavigationDecision.prevent;
                    }
                  },
                ),
              );
            });
          },
          error: (error, stackTrace) {},
          loading: () {},
        );

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: context.loc.dailyBankingAccounts,
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
                actions: [
                  Button(
                    icon: IconAssets.plus,
                    size: ButtonSize.extraSmall,
                    onPressed: aggregationController.getAggregationServiceUrl,
                  ),
                ],
              ),
            ];
          },
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    CustomCard(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  IconWithContainer(
                                    icon: IconAssets.euro,
                                    backgroundColor: context.color.neutralLight100,
                                  ),
                                  AppSpacing.horizontal.s3,
                                  Text(
                                    'Total',
                                    style: context.textStyle.bodySmallRegular.copyWith(
                                      color: context.color.textLight900,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                789.00.toCurrency(plusSign: false),
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    AppSpacing.vertical.s6,
                    Text(
                      context.loc.dailyBankingAccounts,
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s3,
                    OutlinedList(
                      children: [
                        Splash(
                          borderRadius: BorderRadius.circular(context.radius.soft),
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.s5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        IconWithContainer(
                                          icon: IconAssets.soon,
                                          backgroundColor: context.color.secondaryLight600,
                                          foreground: context.color.neutralLight0,
                                          subIcon: IconAssets.check,
                                        ),
                                        AppSpacing.horizontal.s3,
                                        Text(
                                          'soon',
                                          style: context.textStyle.bodySmallRegular.copyWith(
                                            color: context.color.textLight900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      456.00.toCurrency(plusSign: false),
                                      style: context.textStyle.bodySmallRegular.copyWith(
                                        color: context.color.textLight900,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.vertical.s3,
                    OutlinedList(
                      children: [
                        Splash(
                          borderRadius: BorderRadius.circular(context.radius.soft),
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.s5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        IconWithContainer(
                                          icon: IconAssets.santander,
                                          backgroundColor: context.color.statusError,
                                          foreground: context.color.neutralLight0,
                                        ),
                                        AppSpacing.horizontal.s3,
                                        Text(
                                          'Santander',
                                          style: context.textStyle.bodySmallRegular.copyWith(
                                            color: context.color.textLight900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      333.00.toCurrency(plusSign: false),
                                      style: context.textStyle.bodySmallRegular.copyWith(
                                        color: context.color.textLight900,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Button(
                  title: 'Seleccionar cuenta',
                  size: ButtonSize.small,
                  expand: true,
                  onPressed: () async => context.pop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
