import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    required this.categories,
    required this.onPressed,
    required this.categorySelected,
    required this.setCategory,
    super.key,
  });

  final List<Map<String, dynamic>> categories;
  final int Function() onPressed;
  final String categorySelected;
  final void Function(String) setCategory;

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: categories.asMap().entries.map((entry) {
        final index = entry.key;
        final categoryMap = entry.value;
        return CustomRadioListTile(
          title: categoryMap['title'] as String,
          value: categoryMap['value'],
          groupValue: categorySelected,
          leadingEmoji: categoryMap['emoji'] as String,
          leadingBackgroundColor: categoryMap['backgroundColor'] as Color,
          onChanged: (value) {
            setCategory(value as String);
            onPressed();
          },
          borderRadius: index == 0
              ? BorderRadius.only(
                  topLeft: Radius.circular(context.radius.soft),
                  topRight: Radius.circular(context.radius.soft),
                )
              : index == categories.length - 1
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(context.radius.soft),
                      bottomRight: Radius.circular(context.radius.soft),
                    )
                  : null,
        );
      }).toList(),
    );
  }
}
