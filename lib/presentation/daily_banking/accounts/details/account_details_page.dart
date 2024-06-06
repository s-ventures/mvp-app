import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/accounts/detailed/detailed_account_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountDetailsPage extends ConsumerStatefulWidget {
  const AccountDetailsPage({
    required this.accountId,
    super.key,
  });

  final String accountId;

  @override
  ConsumerState<AccountDetailsPage> createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends ConsumerState<AccountDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedAccountControllerProvider.notifier).init(widget.accountId),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final account = ref.watch(detailedAccountControllerProvider).account;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: context.loc.dailyBankingAccountsDetailsTitle,
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
              ),
            ];
          },
          body: account.when(
            data: (account) => ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.s2,
                      horizontal: AppSpacing.s5,
                    ),
                    decoration: BoxDecoration(
                      color: context.color.backgroundLight0,
                      borderRadius: BorderRadius.circular(
                        context.radius.hard,
                      ),
                      border: Border.all(
                        color: context.color.strokeLigth100,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconSvg.small(
                          account.entity.icon,
                          color: account.entity.name == 'soon'
                              ? context.color.secondaryLight600
                              : context.color.statusError,
                        ),
                        AppSpacing.horizontal.s3,
                        Text(
                          'Cuenta ${account.entity.name}',
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight900,
                          ),
                        ),
                        Text(
                          ' • ${account.currencyCode}',
                          style: context.textStyle.buttonTabBar.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.vertical.s5,
                CustomCard(
                  radius: context.radius.hard,
                  outlined: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        account.balance.balance.toCurrency(plusSign: false),
                        style: context.textStyle.h4.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      AppSpacing.vertical.s3,
                      Row(
                        children: [
                          Text(
                            context.loc.dailyBankingAccountsDetailsAvailableBalance,
                            style: context.textStyle.bodySmallRegular.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                          AppSpacing.horizontal.s2,
                          Text(
                            '',
                            style: context.textStyle.bodySmallSemiBold.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s5,
                CustomCard(
                  outlined: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.loc.dailyBankingAccountsDetailsAccountName,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        account.name,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      AppSpacing.vertical.s5,
                      Text(
                        context.loc.dailyBankingAccountsDetailsAccountAlias,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        account.alias,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s5,
                CustomCard(
                  outlined: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.loc.dailyBankingAccountsDetailsBeneficiary,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        account.accountHolder,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      AppSpacing.vertical.s5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.loc.dailyBankingAccountsDetailsIban,
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight600,
                                ),
                              ),
                              Text(
                                account.iban,
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight900,
                                ),
                              ),
                            ],
                          ),
                          Button(
                            icon: IconAssets.copy,
                            type: ButtonType.outlined,
                            size: ButtonSize.extraSmall,
                            onPressed: () async {},
                          ),
                        ],
                      ),
                      AppSpacing.vertical.s5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.loc.dailyBankingAccountsDetailsBicSwift,
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight600,
                                ),
                              ),
                              Text(
                                account.bicSwift,
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight900,
                                ),
                              ),
                            ],
                          ),
                          Button(
                            icon: IconAssets.copy,
                            type: ButtonType.outlined,
                            size: ButtonSize.extraSmall,
                            onPressed: () async {},
                          ),
                        ],
                      ),
                      AppSpacing.vertical.s5,
                      Text(
                        context.loc.dailyBankingAccountsDetailsBankName,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        account.entity.name,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s5,
                OutlinedList(
                  children: [
                    Splash(
                      borderRadius: BorderRadius.circular(context.radius.soft),
                      onPressed: () async {},
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.s4,
                          vertical: AppSpacing.s2,
                        ),
                        leading: IconWithContainer(
                          icon: IconAssets.document,
                          backgroundColor: context.color.backgroundLight200,
                          size: IconWithContainerSize.medium,
                        ),
                        title: Text(
                          context.loc.dailyBankingAccountsDetailsTitleCertificate,
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight900,
                          ),
                        ),
                        trailing: IconSvg.small(
                          IconAssets.chevronRight,
                          color: context.color.iconLight900,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            error: (error, _) => Center(
              child: Text(
                error.toString(),
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.error,
                ),
              ),
            ),
            loading: () => const Center(
              child: CustomLoader(),
            ),
          ),
        ),
      ),
    );
  }
}
