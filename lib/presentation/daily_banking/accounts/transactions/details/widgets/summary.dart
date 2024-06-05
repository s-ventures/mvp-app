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

class MovementSummary extends StatelessWidget {
  const MovementSummary({
    required this.title,
    required this.icon,
    required this.iconBgColor,
    required this.amount,
    required this.date,
    required this.status,
    super.key,
  });

  final String title;
  final String icon;
  final Color iconBgColor;
  final double amount;
  final DateTime date;
  final MovementStatus status;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textStyle.h6),
        AppSpacing.vertical.s3,
        CustomCard(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconWithContainer(
                width: 48,
                height: 48,
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
                  Text(
                    DateFormat('dd MMM · HH:mm').format(date),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
