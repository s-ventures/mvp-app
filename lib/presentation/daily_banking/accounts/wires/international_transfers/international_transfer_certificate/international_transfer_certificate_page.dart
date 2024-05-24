import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InternationalTransferCertificatePage extends StatelessWidget {
  const InternationalTransferCertificatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.dailyBankingInternationalTransfers,
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                CustomPopupMenuButton(
                  items: [
                    PopupMenuItem(
                      value: '',
                      padding: EdgeInsets.zero,
                      child: Container(
                        padding: const EdgeInsets.all(AppSpacing.s5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reutilizar transferencia',
                              style: context.textStyle.bodyMediumRegular,
                            ),
                            AppSpacing.horizontal.s5,
                            IconSvg.small(
                              IconAssets.invoice,
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: '',
                      padding: EdgeInsets.zero,
                      child: Container(
                        padding: const EdgeInsets.all(AppSpacing.s5),
                        alignment: Alignment.center,
                        color: context.color.statusError.withOpacity(.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Anular transferencia',
                              style: context.textStyle.bodyMediumRegular.copyWith(
                                color: context.color.statusError,
                              ),
                            ),
                            AppSpacing.horizontal.s5,
                            IconSvg.small(
                              IconAssets.xMark,
                              color: context.color.statusError,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ];
        },
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            CustomCard(
              outlined: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      56.00.toCurrency(plusSign: false),
                      style: context.textStyle.h4,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.s3),
                    decoration: BoxDecoration(
                      color: context.color.neutralLight100,
                      borderRadius: BorderRadius.circular(context.radius.soft),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.loc.commonFrequencyDaily,
                          style: context.textStyle.bodySmallRegular,
                        ),
                        Text(
                          ' · ',
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        Text(
                          context.loc.commonDateSinceDate(
                            DateTime.now().formatToTransactionDate(),
                          ),
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            CustomCard(
              outlined: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    context.loc.commonHolder,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Shore2shore',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonBicSwift,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'ES12 1234 5678 8912 1345 7890',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonAmount,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    '${56.00.toCurrency(plusSign: false)} (EURO)',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonTransferFee,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    '${2.00.toCurrency(plusSign: false)} (EURO)',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonConcept,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Viaje a Malaga',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonDateDispatch,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Miércoles, 17 Enero, 16:31',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonDateEstimatedArrival,
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'En segundos',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
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
          child: Row(
            children: [
              Expanded(
                child: Button(
                  icon: IconAssets.download,
                  title: context.loc.commonDownload,
                  size: ButtonSize.small,
                  expand: true,
                  onPressed: () async => context.goNamed(AppRoute.dailyBanking.name),
                ),
              ),
              AppSpacing.horizontal.s3,
              Button(
                icon: IconAssets.share,
                size: ButtonSize.small,
                background: context.color.neutralLight200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
