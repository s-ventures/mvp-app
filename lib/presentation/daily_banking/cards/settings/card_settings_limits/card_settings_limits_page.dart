import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class CardSettingsLimitsPage extends StatelessWidget {
  const CardSettingsLimitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar(
              centerTitle: true,
              title: 'Límites de tarjeta',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Flexible(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                children: [
                  CustomCard(
                    outlined: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Límite de pago diario',
                          style: context.textStyle.bodyMediumSemiBold.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: RangeSlider(
                                values: const RangeValues(0, 9000),
                                max: 10000,
                                onChanged: (RangeValues values) {},
                              ),
                            ),
                            AppSpacing.horizontal.s2,
                            SizedBox(
                              width: 96,
                              child: TextInput(
                                size: TextInputSize.extraSmall,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    context.radius.soft,
                                  ),
                                  borderSide: BorderSide(
                                    color: context.color.strokeLigth200,
                                  ),
                                ),
                                initialValue: 9000.toString(),
                                fillColor: context.color.neutralLight100,
                                suffixText: '€',
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.vertical.s5,
                        Text(
                          'Límite de pago mensual',
                          style: context.textStyle.bodyMediumSemiBold.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: RangeSlider(
                                values: const RangeValues(0, 7000),
                                max: 10000,
                                onChanged: (RangeValues values) {},
                              ),
                            ),
                            AppSpacing.horizontal.s2,
                            SizedBox(
                              width: 96,
                              child: TextInput(
                                size: TextInputSize.extraSmall,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    context.radius.soft,
                                  ),
                                  borderSide: BorderSide(
                                    color: context.color.strokeLigth200,
                                  ),
                                ),
                                initialValue: 7000.toString(),
                                fillColor: context.color.neutralLight100,
                                suffixText: '€',
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.vertical.s5,
                        Text(
                          'Límite de pago online',
                          style: context.textStyle.bodyMediumSemiBold.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: RangeSlider(
                                values: const RangeValues(0, 5000),
                                max: 10000,
                                onChanged: (RangeValues values) {},
                              ),
                            ),
                            AppSpacing.horizontal.s2,
                            SizedBox(
                              width: 96,
                              child: TextInput(
                                size: TextInputSize.extraSmall,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    context.radius.soft,
                                  ),
                                  borderSide: BorderSide(
                                    color: context.color.strokeLigth200,
                                  ),
                                ),
                                initialValue: 5000.toString(),
                                fillColor: context.color.neutralLight100,
                                suffixText: '€',
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.vertical.s5,
                        Text(
                          'Límite de retira de cajero',
                          style: context.textStyle.bodyMediumSemiBold.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: RangeSlider(
                                values: const RangeValues(0, 3000),
                                max: 10000,
                                onChanged: (RangeValues values) {},
                              ),
                            ),
                            AppSpacing.horizontal.s2,
                            SizedBox(
                              width: 96,
                              child: TextInput(
                                enabled: false,
                                size: TextInputSize.extraSmall,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    context.radius.soft,
                                  ),
                                  borderSide: BorderSide(
                                    color: context.color.strokeLigth200,
                                  ),
                                ),
                                initialValue: 3000.toString(),
                                fillColor: context.color.neutralLight100,
                                suffixText: '€',
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Button(
            title: 'Guardar',
            size: ButtonSize.medium,
            expand: true,
            onPressed: () async {},
          ),
        ),
      ),
    );
  }
}
