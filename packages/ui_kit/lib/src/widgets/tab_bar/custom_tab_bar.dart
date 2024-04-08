import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_spacing.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    required this.tabs,
    super.key,
  });

  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
      labelPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4),
      indicatorPadding: const EdgeInsets.symmetric(vertical: AppSpacing.s3),
      isScrollable: true,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
