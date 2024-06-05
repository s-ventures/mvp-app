import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ErpDetailsStatus {
  approved,
  pending,
  rejected,
}

class ErpDetailsHeader extends StatelessWidget {
  const ErpDetailsHeader({
    required this.title,
    required this.subtitle,
    required this.status,
    super.key,
  });

  final String title;
  final String subtitle;
  final ErpDetailsStatus status;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: context.textStyle.h6.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ),
            Container(
              height: 32,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
              ),
              decoration: BoxDecoration(
                color: status == ErpDetailsStatus.rejected
                    ? context.color.statusError.withOpacity(0.1)
                    : status == ErpDetailsStatus.pending
                        ? context.color.statusWarning.withOpacity(0.05)
                        : status == ErpDetailsStatus.approved
                            ? context.color.statusSuccess.withOpacity(0.1)
                            : context.color.statusInfo.withOpacity(0.1),
                borderRadius: BorderRadius.circular(context.radius.hard),
              ),
              child: Center(
                child: Text(
                  status == ErpDetailsStatus.rejected
                      ? 'Rechazado'
                      : status == ErpDetailsStatus.pending
                          ? 'Pendiente'
                          : status == ErpDetailsStatus.approved
                              ? 'Aprobado'
                              : 'Enviado',
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: status == ErpDetailsStatus.rejected
                        ? context.color.statusError
                        : status == ErpDetailsStatus.pending
                            ? context.color.statusWarning
                            : status == ErpDetailsStatus.approved
                                ? context.color.statusSuccess
                                : context.color.statusInfo,
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          subtitle,
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s5,
        Row(
          children: [
            Expanded(
              child: Button(
                title: 'Descargar',
                icon: IconAssets.download,
                type: ButtonType.outlined,
                size: ButtonSize.small,
                onPressed: () async {},
              ),
            ),
            AppSpacing.horizontal.s5,
            Button(
              icon: IconAssets.share,
              size: ButtonSize.small,
              onPressed: () async {},
            ),
          ],
        ),
      ],
    );
  }
}
