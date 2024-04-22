import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class ContractedProductsAddProductPage extends StatelessWidget {
  const ContractedProductsAddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar(
              centerTitle: true,
              title: 'Añadir otros seguros',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Text(
              'Seguros contratados',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              hintText: 'Compañía',
              fillColor: context.color.backgroundLight0,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              hintText: 'Seguro',
              fillColor: context.color.backgroundLight0,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              hintText: 'Fecha de renovación',
              fillColor: context.color.backgroundLight0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          child: Button(
            title: 'Añadir seguro',
            size: ButtonSize.small,
            onPressed: () async {},
          ),
        ),
      ),
    );
  }
}
