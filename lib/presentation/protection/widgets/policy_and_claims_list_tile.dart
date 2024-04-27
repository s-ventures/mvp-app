import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum PolicyAndClaimsType {
  policy,
  claim,
}

enum PolicyAndClaimsStatus {
  inProgress,
  completed,
  pending,
}

class ProtectionPolicyAndClaimsListTile extends StatelessWidget {
  const ProtectionPolicyAndClaimsListTile({
    required this.type,
    required this.icon,
    required this.number,
    required this.title,
    this.status,
    this.date,
    this.onPressed,
    super.key,
  });

  final PolicyAndClaimsType type;
  final Widget icon;
  final String number;
  final PolicyAndClaimsStatus? status;
  final String? date;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.backgroundLight0,
        borderRadius: BorderRadius.circular(context.radius.soft),
        border: Border.all(
          color: context.color.strokeLigth100,
        ),
      ),
      child: Splash(
        onPressed: onPressed != null ? () async => onPressed!.call() : null,
        borderRadius: BorderRadius.circular(context.radius.soft),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Número de ${type == PolicyAndClaimsType.policy ? 'póliza' : 'siniestro'}: $number',
                      style: context.textStyle.buttonTabBar.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Row(
                    children: [
                      if (status != null)
                        Container(
                          width: AppSpacing.s3,
                          height: AppSpacing.s3,
                          decoration: BoxDecoration(
                            color: status == PolicyAndClaimsStatus.pending
                                ? context.color.neutralLight100
                                : status == PolicyAndClaimsStatus.inProgress
                                    ? context.color.statusWarning
                                    : status == PolicyAndClaimsStatus.completed
                                        ? context.color.statusSuccess
                                        : context.color.neutralLight100,
                            shape: BoxShape.circle,
                          ),
                        ),
                      AppSpacing.horizontal.s2,
                      if (date != null)
                        Text(
                          date!,
                          style: context.textStyle.buttonTabBar.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                      if (status != null)
                        Text(
                          status == PolicyAndClaimsStatus.pending
                              ? 'Pendiente'
                              : status == PolicyAndClaimsStatus.inProgress
                                  ? 'En curso'
                                  : status == PolicyAndClaimsStatus.completed
                                      ? 'Completado'
                                      : 'Sin estado',
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
                  icon,
                  AppSpacing.horizontal.s5,
                  Flexible(
                    child: Text(
                      title,
                      style: context.textStyle.bodyMediumSemiBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
