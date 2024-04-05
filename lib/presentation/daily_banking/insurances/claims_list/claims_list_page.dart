import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/widgets/filter_policies_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceClaimsListPage extends StatelessWidget {
  const InsuranceClaimsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Listado de siniestros',
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
                actions: [
                  Button(
                    icon: IconAssets.info,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                  ),
                ],
              ),
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Siniestros',
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ),
                  Button(
                    icon: IconAssets.filter,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async {
                      await FilterPoliciesBottomSheet.show(context: context);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomChip(
                    title: Text(
                      'Todos',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.primaryLight300,
                      ),
                    ),
                    onSelected: print,
                  ),
                  AppSpacing.horizontal.s3,
                  CustomChip(
                    title: Text(
                      'En curso',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight0,
                      ),
                    ),
                    selected: true,
                    onSelected: print,
                  ),
                ],
              ),
              AppSpacing.vertical.s4,
              InsuranceClaimListTile(
                leadingEmoji: '🖥️',
                leadingBackgroundColor: const Color(0xFFE0E0E0),
                number: '123456',
                title: 'Protección de la actividad de tu negocio',
                status: 'En curso',
                statusColor: context.color.statusWarning,
                onTap: () => context
                    .pushNamed(AppRoute.dailyBankingInsuranceClaimDetails.name),
              ),
              AppSpacing.vertical.s3,
              InsuranceClaimListTile(
                leadingEmoji: '🛍️',
                leadingBackgroundColor: const Color(0xFFFEDEF4),
                number: '123456',
                title: 'Protección de la actividad de tu negocio',
                status: 'En curso',
                statusColor: context.color.statusWarning,
                onTap: () => context
                    .pushNamed(AppRoute.dailyBankingInsuranceClaimDetails.name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
