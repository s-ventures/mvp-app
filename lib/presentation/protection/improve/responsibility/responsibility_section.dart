import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ResponsibilitySection extends StatelessWidget {
  const ResponsibilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverPinnedOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            AppSpacing.vertical.s3.sliver,
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomCard(
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
                                '50%',
                                style: context.textStyle.buttonTabBar.copyWith(
                                  color: context.color.textLight600,
                                ),
                              ),
                            ],
                          ),
                          AppSpacing.vertical.s5,
                          LinearProgressIndicator(
                            minHeight: 6,
                            value: 0.5,
                            backgroundColor:
                                context.color.statusWarning.withOpacity(.1),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              context.color.statusWarning,
                            ),
                            borderRadius:
                                BorderRadius.circular(context.radius.soft),
                          ),
                        ],
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      'Seguros recomendados',
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Splash(
                      borderRadius: BorderRadius.circular(context.radius.soft),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.s4,
                          vertical: AppSpacing.s2,
                        ),
                        tileColor: context.color.backgroundLight0,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(context.radius.soft),
                        ),
                        title: Text(
                          'Seguro de Responsabilidad Civil',
                          style: context.textStyle.bodySmallRegular.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        leading: IconWithContainer(
                          icon: IconAssets.security,
                          backgroundColor: context.color.neutralLight100,
                        ),
                        trailing: CustomCheckbox(
                          isChecked: true,
                          onChecked: (value) {},
                          activeColor: CheckboxColor.secondary,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
