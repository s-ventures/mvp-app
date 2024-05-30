import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpGridTile extends StatelessWidget {
  const ErpGridTile({
    required this.title,
    required this.date,
    required this.contact,
    required this.amount,
    required this.status,
    required this.statusColor,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String date;
  final String contact;
  final double amount;
  final String status;
  final Color statusColor;
  final VoidCallback onPressed;

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
      child: Splash(
        borderRadius: BorderRadius.circular(
          context.radius.soft,
        ),
        onPressed: () async => onPressed.call(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(context.radius.hard),
                  ),
                ),
                AppSpacing.horizontal.s2,
                Expanded(
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s4,
            Expanded(
              child: Text(
                contact,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: context.textStyle.bodyMediumSemiBold,
              ),
            ),
            AppSpacing.vertical.s3,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
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
                color: statusColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(context.radius.hard),
              ),
              child: Text(
                status,
                textAlign: TextAlign.center,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: statusColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
