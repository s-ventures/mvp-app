import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({required this.categories, required this.onPressed, super.key});

  final List<Map<String, dynamic>> categories;
  final int Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryValue = ref.watch(filterSimplifiedAccountTransactionsControllerProvider).category;
    final onCategorySelected = ref.read(filterSimplifiedAccountTransactionsControllerProvider.notifier).setCategory;

    return OutlinedList(
      children: categories.asMap().entries.map((entry) {
        final index = entry.key;
        final categoryMap = entry.value;
        return CustomRadioListTile(
          title: categoryMap['title'] as String,
          value: categoryMap['value'],
          groupValue: categoryValue,
          leadingEmoji: categoryMap['emoji'] as String,
          leadingBackgroundColor: categoryMap['backgroundColor'] as Color,
          onChanged: (value) {
            onCategorySelected(value as String);
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
