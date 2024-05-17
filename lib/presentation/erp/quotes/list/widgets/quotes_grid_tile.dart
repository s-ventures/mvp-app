import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesGridTile extends StatelessWidget {
  const QuotesGridTile({
    required this.quote,
    required this.date,
    required this.contact,
    required this.amount,
    required this.status,
    super.key,
  });

  final String quote;
  final String date;
  final String contact;
  final double amount;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s5),
      decoration: BoxDecoration(
        color: context.color.backgroundLight0,
        borderRadius: BorderRadius.circular(
          context.radius.soft,
        ),
        border: Border.all(
          color: context.color.strokeLigth100,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: context.color.statusWarning,
                  borderRadius: BorderRadius.circular(context.radius.hard),
                ),
              ),
              AppSpacing.horizontal.s2,
              Text(
                quote,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              const Spacer(),
              Text(
                date,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s4,
          Row(
            children: [
              IconWithContainer(
                icon: IconAssets.user,
                backgroundColor: context.color.neutralLight100,
                size: IconWithContainerSize.extraSmall,
                width: AppSpacing.s6,
                height: AppSpacing.s6,
              ),
              AppSpacing.horizontal.s2,
              Text(contact, style: context.textStyle.bodyMediumSemiBold),
            ],
          ),
          AppSpacing.vertical.s3,
          Text(
            'Total',
            style: context.textStyle.buttonTabBar.copyWith(
              color: context.color.textLight600,
            ),
          ),
          Text(
            amount.toCurrency(plusSign: false),
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.textLight900,
            ),
          ),
          AppSpacing.vertical.s4,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: context.color.statusWarning.withOpacity(0.1),
              borderRadius: BorderRadius.circular(context.radius.hard),
            ),
            child: Text(
              status,
              textAlign: TextAlign.center,
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.statusWarning,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
