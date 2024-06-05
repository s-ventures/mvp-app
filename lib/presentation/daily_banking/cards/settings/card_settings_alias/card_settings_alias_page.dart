import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class CardSettingsAliasPage extends StatelessWidget {
  const CardSettingsAliasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Alias de tu tarjeta',
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
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  children: [
                    CustomCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Inserte el alias de su tarjeta',
                            style: context.textStyle.bodyMediumSemiBold.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                          AppSpacing.vertical.s3,
                          const TextInput(
                            size: TextInputSize.extraSmall,
                            hintText: 'Ej. Tarjeta personal',
                          ),
                          AppSpacing.vertical.s5,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Button(
                  title: 'Guardar',
                  size: ButtonSize.medium,
                  expand: true,
                  onPressed: () async {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
