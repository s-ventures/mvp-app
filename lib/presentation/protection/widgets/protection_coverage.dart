import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CoverageProtection extends StatelessWidget {
  const CoverageProtection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s5),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cobertura total',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              Text(
                '25%',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s4,
          LinearProgressIndicator(
            minHeight: 6,
            value: 0.25,
            backgroundColor: context.color.tertiaryLight100,
            valueColor: AlwaysStoppedAnimation<Color>(
              context.color.tertiary,
            ),
            borderRadius: BorderRadius.circular(context.radius.soft),
          ),
          AppSpacing.vertical.s6,
          Button(
            title: 'Mejorar',
            size: ButtonSize.small,
            expand: true,
            onPressed: () => context.pushNamed(AppRoute.pretectionImprove.name),
          ),
        ],
      ),
    );
  }
}
