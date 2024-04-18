import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

enum CustomAppBarType {
  logo,
  text,
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
    this.leading,
    this.title,
    this.actions,
    this.backgroundColor,
    this.separatorColor,
    this.centerTitle,
    this.type = CustomAppBarType.text,
    this.onLeadingTap,
    this.floating = false,
    this.pinned = false,
    this.bottom,
  }) : _sliver = false;

  const CustomAppBar.sliver({
    super.key,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
    this.leading,
    this.title,
    this.actions,
    this.backgroundColor,
    this.separatorColor,
    this.centerTitle,
    this.type = CustomAppBarType.text,
    this.onLeadingTap,
    this.floating = false,
    this.pinned = false,
    this.bottom,
  }) : _sliver = true;

  @override
  final Size preferredSize;

  final bool _sliver;
  final Widget? leading;
  final String? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? separatorColor;
  final bool? centerTitle;
  final CustomAppBarType type;
  final AsyncValueGetter<bool>? onLeadingTap;
  final PreferredSizeWidget? bottom;
  final bool floating;
  final bool pinned;

  @override
  Widget build(BuildContext context) {
    return _sliver
        ? _SliverAppBar(
            floating: floating,
            pinned: pinned,
            backgroundColor: backgroundColor,
            leading: leading,
            onLeadingTap: onLeadingTap,
            type: type,
            title: title,
            actions: actions,
            centerTitle: centerTitle,
            bottom: bottom,
          )
        : _AppBar(
            backgroundColor: backgroundColor,
            leading: leading,
            onLeadingTap: onLeadingTap,
            type: type,
            title: title,
            actions: actions,
            centerTitle: centerTitle,
            bottom: bottom,
          );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    required this.backgroundColor,
    required this.leading,
    required this.onLeadingTap,
    required this.type,
    required this.title,
    required this.actions,
    required this.centerTitle,
    required this.bottom,
  });

  final Color? backgroundColor;
  final Widget? leading;
  final AsyncValueGetter<bool>? onLeadingTap;
  final CustomAppBarType type;
  final String? title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: context.textStyle.bodyMediumRegular,
      backgroundColor: backgroundColor ?? context.color.backgroundLight200,
      leadingWidth: AppSpacing.s7 + AppSpacing.s4,
      leading: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.s4),
        margin: const EdgeInsets.only(left: AppSpacing.s4),
        child: leading ??
            Button(
              icon: IconAssets.chevronLeft,
              type: ButtonType.outlined,
              size: ButtonSize.extraSmall,
              onPressed: () async {
                onLeadingTap?.call() ?? context.pop();
              },
            ),
      ),
      title: type == CustomAppBarType.logo
          ? SizedBox(
              height: 18,
              child: IconSvg(
                IconAssets.logotype,
                color: context.color.textLight900,
              ),
            )
          : Text(title ?? ''),
      actions: [
        ...actions ?? [],
        const SizedBox(width: AppSpacing.s4),
      ],
      centerTitle: centerTitle,
      surfaceTintColor: context.color.backgroundLight200,
      bottom: bottom,
    );
  }
}

class _SliverAppBar extends StatelessWidget {
  const _SliverAppBar({
    required this.floating,
    required this.pinned,
    required this.backgroundColor,
    required this.leading,
    required this.onLeadingTap,
    required this.type,
    required this.title,
    required this.actions,
    required this.centerTitle,
    required this.bottom,
  });

  final bool floating;
  final bool pinned;
  final Color? backgroundColor;
  final Widget? leading;
  final AsyncValueGetter<bool>? onLeadingTap;
  final CustomAppBarType type;
  final String? title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      titleTextStyle: context.textStyle.bodyMediumRegular,
      floating: floating,
      pinned: pinned,
      backgroundColor: backgroundColor ?? context.color.backgroundLight200,
      leadingWidth: AppSpacing.s7 + AppSpacing.s4,
      leading: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.s4),
        margin: const EdgeInsets.only(left: AppSpacing.s4),
        child: leading ??
            Button(
              icon: IconAssets.chevronLeft,
              type: ButtonType.outlined,
              size: ButtonSize.extraSmall,
              onPressed: () async {
                onLeadingTap?.call() ?? context.pop();
              },
            ),
      ),
      title: type == CustomAppBarType.logo
          ? SizedBox(
              height: 18,
              child: IconSvg(
                IconAssets.logotype,
                color: context.color.textLight900,
              ),
            )
          : Text(title ?? ''),
      actions: [
        ...actions ?? [],
        const SizedBox(width: AppSpacing.s4),
      ],
      centerTitle: centerTitle,
      surfaceTintColor: context.color.backgroundLight200,
      bottom: bottom,
    );
  }
}
