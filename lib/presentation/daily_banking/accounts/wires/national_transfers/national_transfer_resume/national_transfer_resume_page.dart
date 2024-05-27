import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class NationalTransferResumePage extends StatelessWidget {
  const NationalTransferResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.dailyBankingNationalTransfersOtpTitle,
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
            CustomCard(
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
                    context.loc.commonIban,
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
                    context.loc.dailyBankingNationalTransfersTransferFee,
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.s5,
                  vertical: AppSpacing.s3,
                ),
                decoration: BoxDecoration(
                  color: context.color.neutralLight100,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${context.loc.commonProgrammed} ${context.loc.commonFrequencyDaily.toLowerCase()}',
                      style: context.textStyle.bodyMediumRegular,
                    ),
                    Text(
                      ' · ',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      context.loc.commonDateSinceDate(
                        DateTime.now().formatToTransactionDate(),
                      ),
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s5,
              Button(
                title: context.loc.dailyBankingNationalTransfersResumeButton,
                size: ButtonSize.small,
                expand: true,
                onPressed: () async => context.pushNamed(
                  AppRoute.dailyBankingNationalTransferOtp.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
