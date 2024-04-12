import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTransactionMap extends StatelessWidget {
  const CardTransactionMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: ShapeDecoration(
        color: context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.hard),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
      ),
      child: Column(
        children: [
          Flexible(
            child: Center(
              child: Text(
                'Mapa con la ubicación de la transacción',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
          ),
          const Divider(
            height: 0,
            thickness: 0,
            color: Color(0xFFE5E5E5),
          ),
          SizedBox(
            height: AppSpacing.s8,
            child: ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
              ),
              title: Text(
                'Madrid, España',
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
    );
  }
}
