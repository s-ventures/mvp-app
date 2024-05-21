import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class FakeSearchBar extends StatelessWidget {
  const FakeSearchBar({this.onPressed, super.key});

  final Future<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                IconSvg.small(
                  IconAssets.search,
                  color: context.color.iconLight600,
                ),
                AppSpacing.horizontal.s3,
                Expanded(
                  child: Text(
                    context.loc.commonSearch,
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
