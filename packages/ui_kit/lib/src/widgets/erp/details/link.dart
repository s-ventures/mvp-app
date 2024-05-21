import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsLink extends StatelessWidget {
  const ErpDetailsLink({
    this.link,
    this.onPressed,
    super.key,
  });

  final String? link;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Splash(
      borderRadius: BorderRadius.circular(
        context.radius.soft,
      ),
      onPressed: onPressed != null ? () async => onPressed!.call() : null,
      child: ListTile(
        dense: true,
        tileColor: context.color.backgroundLight0,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.s5,
          vertical: AppSpacing.s3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.radius.soft,
          ),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
        title: RichText(
          text: TextSpan(
            text: 'Genera un ',
            style: context.textStyle.bodyMediumRegular,
            children: <TextSpan>[
              TextSpan(
                text: 'link',
                style: context.textStyle.bodyMediumSemiBold,
              ),
              TextSpan(
                text: ' para cobrar esta factura',
                style: context.textStyle.bodyMediumRegular,
              ),
            ],
          ),
          maxLines: 2,
        ),
        trailing: IconWithContainer(
          icon: IconAssets.link,
          foreground: context.color.iconLight0,
          backgroundColor: context.color.primary,
          width: 48,
          height: 48,
          size: IconWithContainerSize.medium,
          borderRadius: BorderRadius.circular(
            context.radius.hard,
          ),
        ),
      ),
    );
  }
}
