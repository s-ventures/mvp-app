import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/certificates/widgets/certificate_taxes.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CertificatesAndDocumentsRequestPaymentPage extends StatelessWidget {
  const CertificatesAndDocumentsRequestPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Pago certificado',
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
            const CertificateTaxes(
              amount: 2,
            ),
            AppSpacing.vertical.s5,
            Text(
              'Método de pago',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s4,
              ),
              tileColor: context.color.backgroundLight0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: BorderSide(
                  color: context.color.strokeLigth100,
                ),
              ),
              title: Text(
                'Soon',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              subtitle: Text(
                'VISA ··008',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              leading: IconWithContainer(
                icon: IconAssets.wallet,
                backgroundColor: context.color.strokeLigth100,
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
          child: Button(
            title: 'Pagar certificado',
            expand: true,
            size: ButtonSize.small,
            onPressed: () async => context.goNamed(
              AppRoute.dailyBankingCertsAndDocumentsRequestPaymentOTP.name,
            ),
          ),
        ),
      ),
    );
  }
}
