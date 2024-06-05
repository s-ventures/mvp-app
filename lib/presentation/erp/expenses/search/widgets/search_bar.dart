import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesSearchBar extends StatelessWidget {
  const ExpensesSearchBar({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
      child: TextInput(
        controller: controller,
        hintText: 'Buscar',
        maxLines: 1,
        prefixIcon: IconSvg.small(
          IconAssets.search,
          color: context.color.iconLight600,
        ),
        prefixConstraints: const BoxConstraints.tightFor(
          height: 16,
          width: 24,
        ),
        contentPadding: const EdgeInsets.all(AppSpacing.s4),
      ),
    );
  }
}
