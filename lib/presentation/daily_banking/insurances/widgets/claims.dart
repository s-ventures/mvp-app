import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/widgets/filter_claims_bottom_sheet.dart';
import 'package:ui_kit/ui_kit.dart';

class Claims extends StatelessWidget {
  const Claims({super.key});

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
                  await FilterClaimsBottomSheet.show(context: context);
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
          AppSpacing.vertical.s3,
          InsuranceClaimListTile(
            leadingEmoji: '🖥️',
            leadingBackgroundColor: const Color(0xFFE0E0E0),
            number: '123456',
            status: 'En curso',
            statusColor: context.color.statusWarning,
            title: 'Protección de la actividad de tu negocio',
            onTap: () {},
          ),
          AppSpacing.vertical.s3,
          InsuranceClaimListTile(
            leadingEmoji: '🛍️',
            leadingBackgroundColor: const Color(0xFFFEDEF4),
            number: '123456',
            status: 'En curso',
            statusColor: context.color.statusWarning,
            title: 'Protección de la actividad de tu negocio',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
