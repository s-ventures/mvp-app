import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum MovementSplashRadius { top, bottom }

class MovementListTile extends StatelessWidget {
  const MovementListTile({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.balance,
    required this.icon,
    required this.iconBackgroundColor,
    required this.onPressed,
    this.borderRadius,
    super.key,
  });

  final String title;
  final String subtitle;
  final double amount;
  final double balance;
  final String icon;
  final Color iconBackgroundColor;
  final VoidCallback onPressed;
  final MovementSplashRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Splash(
      onPressed: () async => onPressed.call(),
      borderRadius: borderRadius == MovementSplashRadius.top
          ? BorderRadius.vertical(
              top: Radius.circular(
                context.radius.soft,
              ),
            )
          : borderRadius == MovementSplashRadius.bottom
              ? BorderRadius.vertical(
                  bottom: Radius.circular(
                    context.radius.soft,
                  ),
                )
              : BorderRadius.zero,
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.s5,
          vertical: AppSpacing.s1,
        ),
        leading: IconWithContainer(
          icon: icon,
          backgroundColor: iconBackgroundColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.textStyle.bodySmallSemiBold,
            ),
            Text(
              amount.toCurrency(),
              style: context.textStyle.bodySmallRegular.copyWith(
                color: (amount > 0)
                    ? context.color.statusSuccess
                    : context.color.textLight600,
              ),
            ),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subtitle,
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Text(
              balance.toCurrency(plusSign: false),
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight300,
              ),
            ),
          ],
        ),
        trailing: IconSvg.small(
          IconAssets.chevronRight,
          color: context.color.textLight600,
        ),
      ),
    );
  }
}
