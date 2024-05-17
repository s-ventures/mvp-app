import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
                title: 'Detalles de la cuenta',
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
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: context.color.backgroundLight200,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: context.color.backgroundLight0,
                        child: IconSvg.small(
                          account.entity == '2103' ? IconAssets.soon : IconAssets.santander,
                          color: account.entity == '2103'
                              ? context.color.secondaryLight600
                              : context.color.statusError,
                        ),
                      ),
                    ),
                    AppSpacing.horizontal.s3,
                    Text(
                      account.entity == '2103' ? 'Cuenta soon' : 'Cuenta Santander',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      ' • ${account.currencyCode}',
                      style: context.textStyle.buttonTabBar.copyWith(
                        color: context.color.neutralDark500,
                      ),
                    ),
                  ],
                ),
                AppSpacing.vertical.s6,
                CustomCard(
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
                            'Saldo disponible',
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
                AppSpacing.vertical.s6,
                CustomCard(
                  outlined: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre de la cuenta',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        '',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      AppSpacing.vertical.s5,
                      Text(
                        'Alias de la cuenta',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        '',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s6,
                CustomCard(
                  outlined: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Titular',
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
                                'IBAN',
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight600,
                                ),
                              ),
                              Text(
                                account.number,
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
                                'Código BIC/SWIFT',
                                style: context.textStyle.bodySmallRegular.copyWith(
                                  color: context.color.textLight600,
                                ),
                              ),
                              Text(
                                '',
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
                        'Nombre y dirección del banco',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        account.entity,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s6,
                OutlinedList(
                  children: [
                    Splash(
                      borderRadius: BorderRadius.circular(context.radius.soft),
                      onPressed: () async {},
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(AppSpacing.s3),
                          decoration: ShapeDecoration(
                            color: context.color.backgroundLight200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(context.radius.soft),
                            ),
                          ),
                          child: IconSvg.small(
                            IconAssets.document,
                            color: context.color.iconLight900,
                          ),
                        ),
                        title: Text(
                          'Transferencia programadas',
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
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
