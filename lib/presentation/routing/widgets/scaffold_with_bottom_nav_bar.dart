// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

final _selectedNavBarIndexStateProvider = StateProvider<int>((ref) => 0);

class ScaffoldWithBottomNavBar extends ConsumerWidget {
  /// Default constructor for the [ScaffoldWithBottomNavBar].
  const ScaffoldWithBottomNavBar({
    required this.child,
    super.key,
  });

  /// The child widget to display.
  final Widget child;

  void _tap(BuildContext context, WidgetRef ref, int index, int selectedIndex) {
    if (index == selectedIndex) {
      // If the tab hasn't changed, do nothing
      return;
    }

    ref.read(_selectedNavBarIndexStateProvider.notifier).state = index;

    if (index == 0) {
      // Note: this won't remember the previous state of the route
      // More info here:
      // https://github.com/flutter/flutter/issues/99124
      context.goNamed(AppRoute.dailyBanking.name);
    } else if (index == 1) {
      context.goNamed(AppRoute.negocio.name);
    } else if (index == 2) {
      context.goNamed(AppRoute.agenda.name);
    } else if (index == 3) {
      context.goNamed(AppRoute.analitica.name);
    } else if (index == 4) {
      context.goNamed(AppRoute.protection.name);
    } else if (index == 5) {
      context.goNamed(AppRoute.protection.name);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(_selectedNavBarIndexStateProvider);
    final selectedColor = context.color.textLight900;
    final unselectedColor = context.color.textLight900.withOpacity(.3);

    return Scaffold(
      body: child,
      bottomNavigationBar: SizedBox(
        height: 88,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            _tap(context, ref, value, selectedIndex);
          },
          items: [
            BottomNavigationBarItem(
              icon: IconSvg(
                IconAssets.home,
                color: selectedIndex == 0 ? selectedColor : unselectedColor,
              ),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: IconSvg(
                IconAssets.file,
                color: selectedIndex == 1 ? selectedColor : unselectedColor,
              ),
              label: 'Negocio',
            ),
            BottomNavigationBarItem(
              icon: IconSvg(
                IconAssets.addressBook,
                color: selectedIndex == 2 ? selectedColor : unselectedColor,
              ),
              label: 'Agenda',
            ),
            BottomNavigationBarItem(
              icon: IconSvg(
                IconAssets.charm,
                color: selectedIndex == 3 ? selectedColor : unselectedColor,
              ),
              label: 'Analítica',
            ),
            BottomNavigationBarItem(
              icon: IconSvg(
                IconAssets.security,
                color: selectedIndex == 4 ? selectedColor : unselectedColor,
              ),
              label: 'Protección',
            ),
          ],
        ),
      ),
    );
  }
}
