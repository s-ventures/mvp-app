import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/accounts/simplified/simplified_accounts_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountListSliverPinnedHeader extends ConsumerStatefulWidget {
  const AccountListSliverPinnedHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountListSliverPinnedHeaderState();
}

class _AccountListSliverPinnedHeaderState extends ConsumerState<AccountListSliverPinnedHeader> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(simplifiedAccountsControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final accounts = ref.watch(
      simplifiedAccountsControllerProvider.select((value) => value.accounts),
    );
    final controller = ref.read(simplifiedAccountsControllerProvider.notifier);

    return SliverAppBar(
      shadowColor: Colors.grey,
      scrolledUnderElevation: 4,
      pinned: true,
      surfaceTintColor: context.color.backgroundLight200,
      backgroundColor: context.color.backgroundLight200,
      toolbarHeight: 125,
      flexibleSpace: accounts.mapOrNull(
            data: (data) => _AccountList(
              accounts: data.value,
              onPageChanged: controller.selectAccount,
            ),
          ) ??
          const CircularProgressIndicator.adaptive(),
    );
  }
}

class _AccountList extends StatelessWidget {
  const _AccountList({
    required this.accounts,
    required this.onPageChanged,
  });

  final List<SimplifiedAccount> accounts;
  final void Function(UniqueId accountId) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: .9),
      itemCount: accounts.length,
      onPageChanged: (index) => onPageChanged(accounts[index].id),
      itemBuilder: (context, index) {
        final account = accounts[index];

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomChip(
                      title: Row(
                        children: [
                          Text(
                            'Cuenta ',
                            style: context.textStyle.bodySmallRegular.copyWith(
                              color: context.color.primaryLight600,
                            ),
                          ),
                          Text(
                            account.entity,
                            style: context.textStyle.bodySmallSemiBold.copyWith(
                              color: context.color.primaryLight600,
                            ),
                          ),
                          Text(
                            ' • ${account.currencyCode}',
                            style: context.textStyle.buttonTabBar.copyWith(
                              color: context.color.primaryLight300,
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: context.color.backgroundLight200,
                      onSelected: (_) {},
                    ),
                    const Spacer(),
                    CustomPopupMenuButton(
                      items: [
                        PopupMenuItem(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Transferencias programadas'),
                              AppSpacing.horizontal.s6,
                              IconSvg.small(IconAssets.calendar),
                            ],
                          ),
                          onTap: () => context.pushNamed(AppRoute.dailyBankingScheduledTransfers.name),
                        ),
                        PopupMenuItem(
                          onTap: () => context.pushNamed(
                            AppRoute.dailyBankingAccountDetails.name,
                            pathParameters: {
                              'accountId': account.id.getOrCrash(),
                            },
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Ver detalles'),
                              AppSpacing.horizontal.s6,
                              IconSvg.small(IconAssets.bank),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Pagar un impuesto'),
                              AppSpacing.horizontal.s6,
                              IconSvg.small(IconAssets.invoice),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Certificados y documentos'),
                              AppSpacing.horizontal.s6,
                              IconSvg.small(IconAssets.document),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  account.balance.balance.toCurrency(plusSign: false),
                  style: context.textStyle.h4,
                ),
                AppSpacing.vertical.s2,
                Row(
                  children: [
                    Text(
                      'Saldo disponible ',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      account.balance.availableBalance.toCurrency(plusSign: false),
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: account.balance.availableBalance < 0
                            ? context.color.statusError
                            : context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
