import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class PlanUpgradePage extends StatelessWidget {
  const PlanUpgradePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: CustomAppBar.sliver(
                  centerTitle: true,
                  pinned: true,
                  title: 'soon Plan',
                  leading: Button(
                    icon: IconAssets.arrowLeft,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async => context.pop(),
                  ),
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(text: 'Basic'),
                      Tab(text: 'Premium'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Center(child: Text('Basic')),
              Center(child: Text('Premium')),
            ],
          ),
        ),
      ),
    );
  }
}
