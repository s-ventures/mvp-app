import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsMovement extends StatelessWidget {
  const ErpDetailsMovement({
    required this.emoji,
    required this.movement,
    required this.total,
    required this.account,
    required this.hour,
    super.key,
  });

  final String emoji;
  final String movement;
  final double total;
  final String account;
  final String hour;

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
            text: emoji,
            size: IconWithContainerSize.medium,
            backgroundColor: context.color.secondaryLight100,
          ),
          title: Text(
            movement,
            style: context.textStyle.bodyMediumRegular,
          ),
          subtitle: Text(
            '$account · $hour',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                total.toCurrency(),
                style: context.textStyle.bodyMediumRegular.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.horizontal.s3,
              Button(
                icon: IconAssets.xMark,
                foreground: context.color.iconLight600,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
