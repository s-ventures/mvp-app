import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/upload_files_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
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
              CustomAppBar.sliver(
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
              MovementDetailsSummary(
                title: 'Adobe Store',
                iconText: '💳',
                iconBgColor: context.color.primaryLight100,
                amount: -25,
                date: DateTime.now(),
                status: MovementStatus.completed,
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsMap(
                location: 'Madrid, España',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsBankingInfo(
                type: BankAccountType.account,
                last4: '1234',
                icon: '🖥️',
                category: 'Tecnología',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsDescription(
                text: 'Compra de licencia de Adobe',
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsVoucher(),
              AppSpacing.vertical.s5,
              MovementDetailsActions(
                onUploadFilesPressed: () {
                  CardUploadFilesBottomSheet.show(context: context);
                },
                onCreateExpensePressed: () {
                  context.goNamed(AppRoute.negocio.name);
                },
              ),
              AppSpacing.vertical.s5,
              const MovementDetailsGettingHelp(),
            ],
          ),
        ),
      ),
    );
  }
}
