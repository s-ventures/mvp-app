import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceDetailsListTile extends StatelessWidget {
  const InsuranceDetailsListTile({
    required this.leadingEmoji,
    required this.leadingBackgroundColor,
    required this.category,
    required this.title,
    required this.subtitle,
    this.onTap,
    super.key,
  });

  final String leadingEmoji;
  final Color leadingBackgroundColor;
  final String category;
  final String title;
  final String subtitle;
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
                padding: const EdgeInsets.all(AppSpacing.s5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconWithContainer(
                          text: leadingEmoji,
                          backgroundColor: leadingBackgroundColor,
                        ),
                        AppSpacing.horizontal.s5,
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: context.textStyle.bodyMediumSemiBold,
                              ),
                              AppSpacing.horizontal.s2,
                              Text(
                                subtitle,
                                style: context.textStyle.buttonTabBar.copyWith(
                                  color: context.color.textLight300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.vertical.s5,
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.s3),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(context.radius.checkboxLarge),
                        color: context.color.neutralLight100,
                      ),
                      width: double.infinity,
                      child: Text(
                        category,
                        textAlign: TextAlign.center,
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.neutralLight500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
