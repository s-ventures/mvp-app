import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ClaimsTab extends StatelessWidget {
  const ClaimsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
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
        AppSpacing.vertical.s5,
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
    );
  }
}
