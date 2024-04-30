import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class NewContactFromAgendaPage extends StatelessWidget {
  const NewContactFromAgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              type: CustomAppBarType.logo,
              leading: Button(
                icon: IconAssets.bell,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.user,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: const [],
        ),
      ),
    );
  }
}
