import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/widgets/upload_files.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardDetailsActions extends StatelessWidget {
  const CardDetailsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recibo',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: () => CardUploadFilesBottomSheet.show(context: context),
          child: Text(
            'Subir archivo',
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
        AppSpacing.vertical.s5,
        Text(
          'Gasto',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: () => context.goNamed(AppRoute.negocio.name),
          child: Text(
            'Crear gasto',
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
      ],
    );
  }
}
