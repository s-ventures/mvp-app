import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/improve/responsibility/responsibility_section.dart';
import 'package:ui_kit/ui_kit.dart';

class ImproveProtectionPage extends StatelessWidget {
  const ImproveProtectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: CustomAppBar(
                  centerTitle: true,
                  pinned: true,
                  type: CustomAppBarType.logo,
                  leading: Button(
                    icon: IconAssets.arrowLeft,
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
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(text: 'Activos'),
                      Tab(text: 'Responsabilidad'),
                      Tab(text: 'Salud'),
                      Tab(text: 'Ingresos'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ResponsibilitySection(),
              ResponsibilitySection(),
              ResponsibilitySection(),
              ResponsibilitySection(),
            ],
          ),
        ),
      ),
    );
  }
}
