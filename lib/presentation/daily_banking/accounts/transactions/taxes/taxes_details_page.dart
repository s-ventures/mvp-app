import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/banking_info.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/certificate.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/dates.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/description.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/getting_help.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/summary.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/widgets/voucher.dart';
import 'package:ui_kit/ui_kit.dart';

class TaxesDetailsPage extends StatelessWidget {
  const TaxesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Detalles de movimiento',
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
                        onTap: () {},
                        child: Row(
                          children: [
                            const Text('Ver mas recibos del emisor'),
                            const Spacer(),
                            IconSvg.small(IconAssets.invoice),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            const Text('Recharzar cobro'),
                            const Spacer(),
                            IconSvg.small(IconAssets.xMark),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              TaxesDetailsMovementSummary(
                title: 'Impuestos',
                icon: '🏦',
                iconBgColor: context.color.secondaryLight600.withOpacity(.2),
                amount: -145,
                subtitle: 'Referencia mandato',
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              CustomCard(
                outlined: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre Emisor',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s1,
                    Text(
                      'Alba Sánchez',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s5,
              const TaxesDetailsDate(
                dateOfCharged: '2/10/2023',
                dateOfPayment: '-',
              ),
              AppSpacing.vertical.s5,
              const TaxesDetailsBankingInfo(
                type: BankAccountType.account,
                last4: '1234',
                icon: '🖥️',
                category: 'Tecnología',
              ),
              AppSpacing.vertical.s5,
              const TaxesDetailsDescription(
                text: 'Seguro IMQ',
              ),
              AppSpacing.vertical.s5,
              const TaxesDetailsVoucher(),
              AppSpacing.vertical.s5,
              const TaxesDetailsCertificate(
                type: CertificateType.debit,
              ),
              AppSpacing.vertical.s5,
              const TaxesDetailsGettingHelp(),
            ],
          ),
        ),
      ),
    );
  }
}
