import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LastTransfers extends StatelessWidget {
  const LastTransfers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Últimas transferencias',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 128,
                padding: const EdgeInsets.all(AppSpacing.s5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextAvatar(
                      backgroundColor: context.color.neutralLight100,
                      text: 'MZ',
                      textStyle: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      'Marc Z.',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      '- 1654,56 €',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontal.s5,
              Container(
                width: 128,
                padding: const EdgeInsets.all(AppSpacing.s5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextAvatar(
                      backgroundColor: context.color.neutralLight100,
                      text: 'AO',
                      textStyle: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      'Aitor O.',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      '- 54,78 €',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontal.s5,
              Container(
                width: 128,
                padding: const EdgeInsets.all(AppSpacing.s5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextAvatar(
                      backgroundColor: context.color.neutralLight100,
                      text: 'LA',
                      textStyle: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      'Luna A.',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      '- 435,96 €',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontal.s5,
              Container(
                width: 128,
                padding: const EdgeInsets.all(AppSpacing.s5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextAvatar(
                      backgroundColor: context.color.neutralLight100,
                      text: 'MZ',
                      textStyle: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      'Marc Z.',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      '- 1654,56 €',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
