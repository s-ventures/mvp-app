import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_kit/ui_kit.dart';

enum MovementStatus {
  completed('Completado'),
  pending('Pendiente'),
  rejected('Rechazado');

  const MovementStatus(this.name);
  final String name;
}

class TaxesDetailsMovementSummary extends StatelessWidget {
  const TaxesDetailsMovementSummary({
    required this.title,
    required this.amount,
    required this.icon,
    required this.iconBgColor,
    required this.status,
    this.date,
    this.subtitle,
    super.key,
  });

  final String title;
  final String? subtitle;
  final String icon;
  final Color iconBgColor;
  final double amount;
  final DateTime? date;
  final MovementStatus status;

  @override
  Widget build(BuildContext context) {
    assert(
      date != null || subtitle != null,
      'date or subtitle must be provided',
    );
    assert(
      date == null || subtitle == null,
      'date and subtitle cannot be provided at the same time',
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textStyle.h6),
        AppSpacing.vertical.s3,
        CustomCard(
          outlined: true,
          child: Row(
            children: [
              IconWithContainer(
                text: icon,
                backgroundColor: iconBgColor,
              ),
              AppSpacing.horizontal.s5,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    amount.toCurrency(),
                    style: context.textStyle.h6.copyWith(
                      color: context.color.textLight900,
                      letterSpacing: 0.15,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    date != null
                        ? DateFormat('dd MMM · HH:mm').format(date!)
                        : subtitle ?? '',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: status == MovementStatus.completed
                      ? context.color.statusSuccess.withOpacity(0.1)
                      : status == MovementStatus.pending
                          ? context.color.statusWarning.withOpacity(0.1)
                          : context.color.statusError.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                child: Text(
                  status.name,
                  style: context.textStyle.buttonTabBar.copyWith(
                    color: status == MovementStatus.completed
                        ? context.color.statusSuccess
                        : status == MovementStatus.pending
                            ? context.color.statusWarning
                            : context.color.statusError,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
