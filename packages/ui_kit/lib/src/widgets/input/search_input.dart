import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    required this.onChanged,
    this.hintText,
    this.labelText,
    super.key,
  });

  final void Function(String value) onChanged;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: AppSpacing.s4,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.radius.soft,
          ),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
        color: context.color.backgroundLight0,
      ),
      child: Row(
        children: [
          IconSvg.small(
            IconAssets.search,
            color: context.color.iconLight600,
          ),
          AppSpacing.horizontal.s2,
          Expanded(
            child: TextInput(
              contentPadding: const EdgeInsets.only(
                top: AppSpacing.s4,
                bottom: AppSpacing.s4,
                right: AppSpacing.s4,
              ),
              hintText: hintText,
              labelText: labelText,
              enabledBorder: false,
              onChanged: (value) => {
                if (value.isEmpty) {onChanged('')},
                onChanged(value),
              },
            ),
          ),
        ],
      ),
    );
  }
}
