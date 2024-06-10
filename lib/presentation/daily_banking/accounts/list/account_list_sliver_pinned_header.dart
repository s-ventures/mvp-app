import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/list/widgets/card_add_account.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountListSliverPinnedHeader extends StatelessWidget {
  const AccountListSliverPinnedHeader({
    required this.accounts,
    required this.selectedAccountIndex,
    required this.setSelectedAccountIndex,
    required this.selectAccount,
    super.key,
  });

  final AsyncValue<List<SimplifiedAccount>> accounts;
  final int selectedAccountIndex;
  final void Function(int) setSelectedAccountIndex;
  final void Function(UniqueId) selectAccount;

  @override
  Widget build(BuildContext context) {
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
              selectedAccountIndex: selectedAccountIndex,
              onPageChanged: (accountId, index) {
                setSelectedAccountIndex(index);
                selectAccount(accountId);
              },
            ),
          ) ??
          const CustomLoader(),
    );
  }
}

class _AccountList extends StatelessWidget {
  const _AccountList({
    required this.accounts,
    required this.onPageChanged,
    required this.selectedAccountIndex,
  });

  final List<SimplifiedAccount> accounts;
  final void Function(UniqueId accountId, int index) onPageChanged;
  final int selectedAccountIndex;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(
        viewportFraction: .9,
        initialPage: selectedAccountIndex,
      ),
      itemCount: accounts.length + 1,
      onPageChanged: (index) {
        if (index >= accounts.length) return;
        onPageChanged(accounts[index].id, index);
      },
      itemBuilder: (context, index) {
        if (index >= accounts.length) {
          return const CardAddAccount();
        }

        final account = accounts[index];

        return Container(
          padding: const EdgeInsets.all(AppSpacing.s5),
          margin: const EdgeInsets.only(
            left: AppSpacing.s2,
            bottom: AppSpacing.s5,
            right: AppSpacing.s2,
          ),
          decoration: BoxDecoration(
            color: context.color.backgroundLight0,
            borderRadius: BorderRadius.circular(context.radius.hard),
            border: Border.all(
              color: context.color.strokeLigth100,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppSpacing.horizontal.s7,
                  Text(
                    account.balance.balance.toCurrency(plusSign: false),
                    style: context.textStyle.h4,
                  ),
                  CustomPopupMenuButton(
                    items: [
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.loc.dailyBankingAccountsMenuAccount,
                            ),
                            AppSpacing.horizontal.s6,
                            IconSvg.small(IconAssets.wallet),
                          ],
                        ),
                        onTap: () => context.pushNamed(
                          AppRoute.dailyBankingAggregatedAccounts.name,
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.loc.dailyBankingAccountsMenuSeeDetails,
                            ),
                            AppSpacing.horizontal.s6,
                            IconSvg.small(IconAssets.info),
                          ],
                        ),
                        onTap: () => context.pushNamed(
                          AppRoute.dailyBankingAccountDetails.name,
                          pathParameters: {
                            'accountId': account.id.getOrCrash(),
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(context.loc.dailyBankingAccountsMenuPayTax),
                            AppSpacing.horizontal.s6,
                            IconSvg.small(IconAssets.invoice),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.loc.dailyBankingAccountsMenuCertsAndDocs,
                            ),
                            AppSpacing.horizontal.s6,
                            IconSvg.small(IconAssets.document),
                          ],
                        ),
                        onTap: () => context.pushNamed(
                          AppRoute.dailyBankingCertsAndDocuments.name,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AppSpacing.vertical.s2,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.loc.dailyBankingAccountsAvailableBalance,
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.horizontal.s3,
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
              AppSpacing.vertical.s5,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomChip(
                    size: CustomChipSize.extraSmall,
                    backgroundColor: context.color.backgroundLight200,
                    leadingIcon: account.entity.icon,
                    leadingIconColor: account.entity.iconColor,
                    leadingIconBackgroundColor: account.entity.iconBackgroundColor,
                    title: Row(
                      children: [
                        Text(
                          'Cuenta ',
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.primaryLight600,
                          ),
                        ),
                        Text(
                          account.entity.name,
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
                    onSelected: (_) => context.pushNamed(
                      AppRoute.dailyBankingAggregatedAccounts.name,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
