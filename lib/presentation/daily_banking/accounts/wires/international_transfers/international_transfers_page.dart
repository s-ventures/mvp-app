import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/international_transfers/widgets/international_transfer_form.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InternationalTransfersPage extends StatelessWidget {
  const InternationalTransfersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar(
              centerTitle: true,
              title: 'Transferencia internacional',
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
          shrinkWrap: true,
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const CurrencyInput(),
                    const SizedBox(height: AppSpacing.s3),
                    Row(
                      children: [
                        Text(
                          'Comisión de transferencia',
                          style: context.textStyle.bodyMediumRegular,
                        ),
                        AppSpacing.horizontal.s3,
                        Text(
                          2.00.toCurrency(plusSign: false),
                          style: context.textStyle.bodyMediumBold.copyWith(
                            color: context.color.textLight300,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.vertical.s3,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.s4,
                        vertical: AppSpacing.s1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(context.radius.hard),
                      ),
                      child: Row(
                        children: [
                          IconSvg.medium(
                            IconAssets.soon,
                            color: context.color.secondaryLight600,
                          ),
                          AppSpacing.horizontal.s5,
                          Text(
                            'Cuenta soon',
                            style: context.textStyle.bodyMediumRegular,
                          ),
                          AppSpacing.horizontal.s5,
                          IconSvg.small(IconAssets.chevronRight),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s7,
            const InternationalTransferForm(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Row(
            children: [
              Button(
                icon: IconAssets.calendar,
                size: ButtonSize.small,
                background: context.color.neutralLight200,
              ),
              AppSpacing.horizontal.s3,
              Expanded(
                child: Button(
                  title: 'Enviar dinero',
                  size: ButtonSize.small,
                  onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingInternationalTransferResume.name),
                  expand: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
