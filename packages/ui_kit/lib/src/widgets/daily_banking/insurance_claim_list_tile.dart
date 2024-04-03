import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceClaimListTile extends StatelessWidget {
  const InsuranceClaimListTile({
    required this.leadingEmoji,
    required this.leadingBackgroundColor,
    required this.number,
    required this.status,
    required this.statusColor,
    required this.title,
    this.onTap,
    super.key,
  });

  final String leadingEmoji;
  final Color leadingBackgroundColor;
  final String number;
  final String status;
  final Color statusColor;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Material(
          color: Colors.transparent,
          child: Ink(
            child: InkWell(
              onTap: onTap,
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
              ),
              child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Número de expediente: $number',
                              style: context.textStyle.buttonTabBar.copyWith(
                                color: context.color.textLight600,
                              ),
                            ),
                          ),
                          AppSpacing.vertical.s2,
                          Row(
                            children: [
                              Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: statusColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              AppSpacing.horizontal.s2,
                              Text(
                                status,
                                style: context.textStyle.buttonTabBar.copyWith(
                                  color: context.color.textLight600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AppSpacing.vertical.s5,
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: leadingBackgroundColor,
                              borderRadius: BorderRadius.circular(context.radius.soft),
                            ),
                            child: Center(
                              child: Text(
                                leadingEmoji,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          AppSpacing.horizontal.s5,
                          Flexible(
                            child: Text(
                              title,
                              style: context.textStyle.bodyMediumSemiBold,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
