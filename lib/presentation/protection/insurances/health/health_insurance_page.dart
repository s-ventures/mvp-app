import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class HealthInsurancePage extends StatelessWidget {
  const HealthInsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Protege tu salud',
                leading: Button(
                  icon: IconAssets.chevronLeft,
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
              Center(
                child: Text(
                  'Health Insurance',
                  style: context.textStyle.bodyMediumSemiBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
