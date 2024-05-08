import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class FavoriteContactsList extends StatelessWidget {
  const FavoriteContactsList({
    required this.onPressed,
    this.contacts = arrContacts,
    this.showTitle = true,
    super.key,
  });

  final List<Map<String, String>> contacts;
  final void Function(String) onPressed;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle) ...[
          Text(
            'Contactos favoritos',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight300,
            ),
          ),
          AppSpacing.vertical.s3,
        ],
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: contacts.asMap().entries.map((entry) {
              final isLast = entry.key == contacts.length - 1;
              return Padding(
                padding: EdgeInsets.only(right: isLast ? 0 : AppSpacing.s4),
                child: CategoryChip(
                  avatar: entry.value['avatar']!,
                  name: entry.value['name']!,
                  onPressed: () => onPressed(
                    entry.value['value']!,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    required this.avatar,
    required this.name,
    required this.onPressed,
    super.key,
  });

  final String avatar;
  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      decoration: ShapeDecoration(
        color: context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.hard),
        ),
      ),
      child: Splash(
        onPressed: () async => onPressed,
        borderRadius: BorderRadius.circular(context.radius.hard),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconWithContainer(
                text: avatar,
                backgroundColor: context.color.strokeLigth100,
                size: IconWithContainerSize.extraSmall,
                width: 24,
                height: 24,
                borderRadius: BorderRadius.circular(context.radius.soft),
              ),
              AppSpacing.vertical.s5,
              SizedBox(
                width: 44,
                child: Center(
                  child: Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const List<Map<String, String>> arrContacts = [
  {
    'avatar': 'MZ',
    'name': 'Marc Z.',
  },
  {
    'avatar': 'AO',
    'name': 'Aitor O.',
  },
  {
    'avatar': 'LA',
    'name': 'Luna A.',
  },
  {
    'avatar': 'MZ',
    'name': 'Marc Z.',
  },
];
