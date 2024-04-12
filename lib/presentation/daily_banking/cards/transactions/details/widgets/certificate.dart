import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum CertificateType {
  credit('abono'),
  debit('adeudo');

  const CertificateType(this.name);
  final String name;
}

class CardCertificate extends StatelessWidget {
  const CardCertificate({required this.type, super.key});

  final CertificateType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Certificado',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            Splash(
              borderRadius: BorderRadius.circular(context.radius.soft),
              onPressed: () async {},
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.s4,
                  vertical: AppSpacing.s2,
                ),
                leading: IconWithContainer(
                  icon: IconAssets.document,
                  size: IconWithContainerSize.medium,
                  backgroundColor: context.color.neutralLight100,
                ),
                title: Text(
                  'Solicitar certificado de ${type.name}',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
                trailing: IconSvg.small(
                  IconAssets.chevronRight,
                  color: context.color.iconLight900,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
