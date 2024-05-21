import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ClaimDetailsType {
  text,
  status,
  date,
  currency,
}

enum ClaimDetailsStatus {
  inProgress,
  completed,
  pending,
}

class ClaimDetailsListTile extends StatelessWidget {
  const ClaimDetailsListTile({
    required this.title,
    required this.trailingText,
    this.trailingType = ClaimDetailsType.text,
    this.trailingStatus,
    super.key,
  });

  final String title;
  final ClaimDetailsType trailingType;
  final String trailingText;
  final ClaimDetailsStatus? trailingStatus;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.s4,
      ),
      tileColor: context.color.backgroundLight0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          context.radius.soft,
        ),
        side: BorderSide(
          color: context.color.strokeLigth100,
        ),
      ),
      title: Text(
        title,
        style: context.textStyle.bodyMediumRegular.copyWith(
          color: context.color.textLight600,
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.s4,
          vertical: AppSpacing.s2,
        ),
        decoration: ShapeDecoration(
          color: trailingType == ClaimDetailsType.text
              ? context.color.backgroundLight0
              : trailingType == ClaimDetailsType.date
                  ? context.color.strokeLigth100
                  : trailingType == ClaimDetailsType.currency
                      ? context.color.strokeLigth100
                      : trailingType == ClaimDetailsType.status
                          ? trailingStatus == ClaimDetailsStatus.completed
                              ? context.color.statusSuccess.withOpacity(.1)
                              : trailingStatus == ClaimDetailsStatus.inProgress
                                  ? context.color.statusInfo.withOpacity(.1)
                                  : trailingStatus == ClaimDetailsStatus.pending
                                      ? context.color.strokeLigth100
                                      : context.color.backgroundLight0
                          : context.color.backgroundLight0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              trailingType == ClaimDetailsType.date || trailingType == ClaimDetailsType.currency
                  ? context.radius.soft
                  : context.radius.hard,
            ),
          ),
        ),
        child: Text(
          trailingText,
          style: context.textStyle.bodyMediumRegular.copyWith(
            color: trailingType == ClaimDetailsType.text
                ? context.color.textLight600
                : trailingType == ClaimDetailsType.date || trailingType == ClaimDetailsType.currency
                    ? context.color.textLight900
                    : trailingType == ClaimDetailsType.status
                        ? trailingStatus == ClaimDetailsStatus.completed
                            ? context.color.statusSuccess
                            : trailingStatus == ClaimDetailsStatus.inProgress
                                ? context.color.statusInfo
                                : trailingStatus == ClaimDetailsStatus.pending
                                    ? context.color.textLight600
                                    : context.color.textLight900
                        : context.color.textLight900,
          ),
        ),
      ),
    );
  }
}
