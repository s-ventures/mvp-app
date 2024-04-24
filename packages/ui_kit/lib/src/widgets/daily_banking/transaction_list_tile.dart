import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    required this.leadingEmoji,
    required this.leadingBackgroundColor,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.endBalance,
    required this.borderRadius,
    this.accountIcon,
    this.accountIconColor,
    this.isFuture = false,
    this.onTap,
    super.key,
  });

  final bool isFuture;
  final String leadingEmoji;
  final Color leadingBackgroundColor;
  final BorderRadius borderRadius;
  final String title;
  final String subtitle;
  final double amount;
  final double endBalance;
  final String? accountIcon;
  final Color? accountIconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          child: Opacity(
            opacity: isFuture ? 0.7 : 1,
            child: ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              leading: IconWithContainer(
                text: leadingEmoji,
                backgroundColor: leadingBackgroundColor,
              ),
              title: Text(
                title,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              subtitle: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (accountIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: IconSvg.small(
                        accountIcon!,
                        color: accountIconColor,
                      ),
                    ),
                  Text(
                    subtitle,
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ],
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount.toCurrency(),
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: amount >= 0
                              ? context.color.statusSuccess
                              : context.color.textLight600,
                        ),
                      ),
                      Text(
                        endBalance.toCurrency(plusSign: false),
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight300,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.horizontal.s3,
                  IconSvg.small(
                    IconAssets.chevronRight,
                    color: context.color.iconLight600,
                  ),
                ],
              ),
              onTap: onTap,
            ),
          ),
        ),
      ),
    );
  }
}
