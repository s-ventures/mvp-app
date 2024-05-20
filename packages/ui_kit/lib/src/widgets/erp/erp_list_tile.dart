import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpListTile extends StatelessWidget {
  const ErpListTile({
    required this.title,
    required this.date,
    required this.contact,
    required this.amount,
    required this.status,
    super.key,
  });

  final String title;
  final String date;
  final String contact;
  final double amount;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        AppSpacing.s5,
      ),
      decoration: ShapeDecoration(
        color: context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
      ),
      child: Column(
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
                title,
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
          AppSpacing.vertical.s3,
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: IconWithContainer(
              icon: IconAssets.user,
              backgroundColor: context.color.neutralLight100,
            ),
            title: Text(
              contact,
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              ),
            ),
            subtitle: Row(
              children: [
                Text(
                  amount.toCurrency(plusSign: false),
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.s4,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: context.color.statusWarning.withOpacity(
                      0.05,
                    ),
                    borderRadius: BorderRadius.circular(
                      context.radius.hard,
                    ),
                  ),
                  child: Text(
                    status,
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.statusWarning,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
