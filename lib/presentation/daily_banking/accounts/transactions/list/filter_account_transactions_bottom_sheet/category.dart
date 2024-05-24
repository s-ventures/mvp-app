import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class Category extends ConsumerWidget {
  const Category({required this.categories, required this.onPressed, super.key});

  final List<Map<String, dynamic>> categories;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryValue = ref.watch(simplifiedAccountTransactionsControllerProvider).category;
    final categorySelected = categories.firstWhere((element) => element['value'] == categoryValue);

    return OutlinedList(
      borderColor: context.color.strokeLigth200,
      children: [
        CategoryListTile(
          leadingEmoji: categorySelected['emoji'] as String,
          leadingBackgroundColor: categorySelected['backgroundColor'] as Color,
          borderRadius: BorderRadius.circular(context.radius.soft),
          title: categorySelected['title'] as String,
          trailing: IconSvg.small(
            IconAssets.chevronRight,
            color: context.color.iconLight600,
          ),
          onTap: () => onPressed?.call(),
        ),
      ],
    );
  }
}
