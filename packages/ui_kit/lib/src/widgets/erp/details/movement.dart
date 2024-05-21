import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsMovement extends StatelessWidget {
  const ErpDetailsMovement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Movimiento asociado',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        ListTile(
          dense: true,
          tileColor: context.color.backgroundLight0,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s4,
            vertical: AppSpacing.s1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              context.radius.soft,
            ),
            side: BorderSide(
              color: context.color.strokeLigth100,
            ),
          ),
          leading: IconWithContainer(
            icon: IconAssets.soon,
            size: IconWithContainerSize.medium,
            backgroundColor: context.color.secondaryLight100,
          ),
          title: Text(
            'Adeslas',
            style: context.textStyle.bodyMediumRegular,
          ),
          subtitle: Text(
            'soon · 10:29',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                (-123.00).toCurrency(),
                style: context.textStyle.bodyMediumRegular.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.horizontal.s3,
              IconSvg.small(
                IconAssets.xMark,
                color: context.color.iconLight600,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
