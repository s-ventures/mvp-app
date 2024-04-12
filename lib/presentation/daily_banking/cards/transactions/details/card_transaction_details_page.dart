// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/actions.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/banking_info.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/description.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/getting_help.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/summary.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/transaction_map.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/voucher.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTransactionDetailsPage extends ConsumerStatefulWidget {
  const CardTransactionDetailsPage({
    required this.cardContractId,
    required this.transactionId,
    super.key,
  });

  final String cardContractId;
  final String transactionId;

  @override
  ConsumerState<CardTransactionDetailsPage> createState() =>
      _CardTransactionDetailsPageState();
}

class _CardTransactionDetailsPageState
    extends ConsumerState<CardTransactionDetailsPage> {
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
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
            children: [
              CardMovementSummary(
                title: 'Adobe Store',
                icon: '💳',
                iconBgColor: context.color.primaryLight100,
                amount: -25,
                date: DateTime.now(),
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              const CardTransactionMap(),
              AppSpacing.vertical.s5,
              const CardBankingInfo(
                type: BankAccountType.account,
                last4: '1234',
                icon: '🖥️',
                category: 'Tecnología',
              ),
              AppSpacing.vertical.s5,
              const CardDescription(text: 'Compra de licencia de Adobe'),
              AppSpacing.vertical.s5,
              const CardVoucher(),
              AppSpacing.vertical.s5,
              const CardDetailsActions(),
              AppSpacing.vertical.s5,
              const CardGettingHelp(),
            ],
          ),
        ),
      ),
    );
  }
}
