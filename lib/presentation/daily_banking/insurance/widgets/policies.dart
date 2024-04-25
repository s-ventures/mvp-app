import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/widgets/filter_policies_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Policies extends StatelessWidget {
  const Policies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.s5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Pólizas',
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
          AppSpacing.vertical.s3,
          InsurancePolicyListTile(
            leadingEmoji: '🖥️',
            leadingBackgroundColor: const Color(0xFFE0E0E0),
            number: '123456',
            category: 'Tecnología',
            title: 'Protección de la actividad de tu negocio',
            onTap: () =>
                context.pushNamed(AppRoute.dailyBankingInsuranceDetails.name),
          ),
          AppSpacing.vertical.s3,
          InsurancePolicyListTile(
            leadingEmoji: '🏥',
            leadingBackgroundColor: const Color(0xFFDDEBFC),
            number: '123456',
            category: 'Salud',
            title: 'Protección de la actividad de tu negocio',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
