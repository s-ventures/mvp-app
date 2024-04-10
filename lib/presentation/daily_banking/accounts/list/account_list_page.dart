import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountListPage extends StatelessWidget {
  const AccountListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Cuentas',
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
                    onPressed: () async {},
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
                                    backgroundColor:
                                        context.color.neutralLight100,
                                  ),
                                  AppSpacing.horizontal.s3,
                                  Text(
                                    'Total',
                                    style: context.textStyle.bodySmallRegular
                                        .copyWith(
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
                                style:
                                    context.textStyle.bodySmallRegular.copyWith(
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
                      'Cuentas',
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s3,
                    OutlinedList(
                      children: [
                        Splash(
                          borderRadius:
                              BorderRadius.circular(context.radius.soft),
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
                                          backgroundColor:
                                              context.color.secondaryLight600,
                                          foreground:
                                              context.color.neutralLight0,
                                          subIcon: IconAssets.check,
                                        ),
                                        AppSpacing.horizontal.s3,
                                        Text(
                                          'soon',
                                          style: context
                                              .textStyle.bodySmallRegular
                                              .copyWith(
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
                                      style: context.textStyle.bodySmallRegular
                                          .copyWith(
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
                          borderRadius:
                              BorderRadius.circular(context.radius.soft),
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
                                          backgroundColor:
                                              context.color.statusError,
                                          foreground:
                                              context.color.neutralLight0,
                                        ),
                                        AppSpacing.horizontal.s3,
                                        Text(
                                          'Santander',
                                          style: context
                                              .textStyle.bodySmallRegular
                                              .copyWith(
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
                                      style: context.textStyle.bodySmallRegular
                                          .copyWith(
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
