import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class RecentCategories extends StatelessWidget {
  const RecentCategories({
    required this.onCategoryPressed,
    // TODO(jesus): Remove this when the categories are dynamic
    this.categories = arrCategories,
    super.key,
  });

  final List<Map<String, dynamic>>? categories;
  final void Function(String) onCategoryPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categorías recientes',
          style: context.textStyle.bodySmallSemiBold.copyWith(
            color: context.color.textLight300,
          ),
        ),
        AppSpacing.vertical.s3,
        Container(
          padding: const EdgeInsets.all(AppSpacing.s4),
          decoration: ShapeDecoration(
            color: context.color.backgroundLight0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.radius.soft),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories!.asMap().entries.map((entry) {
                final isLast = entry.key == categories!.length - 1;
                return Padding(
                  padding: EdgeInsets.only(right: isLast ? 0 : AppSpacing.s4),
                  child: CategoryChip(
                    title: entry.value['title'] as String,
                    emoji: entry.value['emoji'] as String,
                    backgroundColor: entry.value['backgroundColor'] as Color,
                    onPressed: () => onCategoryPressed(
                      entry.value['value']! as String,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    required this.title,
    required this.emoji,
    required this.backgroundColor,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String emoji;
  final Color backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          IconWithContainer(
            text: emoji,
            backgroundColor: backgroundColor,
          ),
          AppSpacing.vertical.s1,
          SizedBox(
            width: 44,
            child: Center(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const List<Map<String, dynamic>> arrCategories = [
  {
    'title': 'Energia',
    'emoji': '⚡',
    'backgroundColor': Color(0xfffff2e0),
    'value': 'Energia',
  },
  {
    'title': 'Alimentación',
    'emoji': '🍕',
    'backgroundColor': Color(0xfffce3dd),
    'value': 'Alimentacion',
  },
  {
    'title': 'Cultura',
    'emoji': '🎭',
    'backgroundColor': Color(0xFFE3DDFC),
    'value': 'Cultura',
  },
  {
    'title': 'Educación',
    'emoji': '📚',
    'backgroundColor': Color(0xFFE2F1DD),
    'value': 'Educacion',
  },
  {
    'title': 'Entretenimiento',
    'emoji': '🎮',
    'backgroundColor': Color(0xFFE0E0E0),
    'value': 'Entretenimiento',
  },
  {
    'title': 'Hogar',
    'emoji': '🏠',
    'backgroundColor': Color(0xFFF8EEDD),
    'value': 'Hogar',
  },
  {
    'title': 'Moda',
    'emoji': '🛍️',
    'backgroundColor': Color(0xFFFEDEF4),
    'value': 'Moda',
  },
  {
    'title': 'Salud',
    'emoji': '🏥',
    'backgroundColor': Color(0xFFDDEBFC),
    'value': 'Salud',
  },
  {
    'title': 'Tecnología',
    'emoji': '🖥️',
    'backgroundColor': Color(0xFFE0E0E0),
    'value': 'Tecnologia',
  },
  {
    'title': 'Transporte',
    'emoji': '🚗',
    'backgroundColor': Color(0xFFFEC5C4),
    'value': 'Transporte',
  },
  {
    'title': 'Viajes',
    'emoji': '🌍',
    'backgroundColor': Color(0xFFDFF5D7),
    'value': 'Viajes',
  },
];
