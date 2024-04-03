import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionSearchBar extends StatelessWidget {
  const TransactionSearchBar({
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
        prefixIcon: Container(
          margin: const EdgeInsets.all(AppSpacing.s5),
          child: IconSvg.small(
            IconAssets.search,
            color: context.color.iconLight600,
          ),
        ),
        fillColor: Colors.white,
      ),
    );
  }
}
