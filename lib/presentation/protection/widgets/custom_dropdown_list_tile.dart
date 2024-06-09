import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum CustomDropdownListTileInitialState {
  expanded,
  collapsed,
}

enum CustomDropdownListTileRadius {
  soft,
  hard,
}

enum CustomDropdownListTileTrailingIconAnimation {
  enabled,
  disabled,
}

class CustomDropdownListTile extends StatefulWidget {
  const CustomDropdownListTile({
    required this.title,
    required this.dropdownItems,
    this.leading,
    this.subtitle,
    this.radius = CustomDropdownListTileRadius.soft,
    this.initialState = CustomDropdownListTileInitialState.expanded,
    this.nextToCollapse = false,
    this.nextToCollapseColor,
    this.nextToCollapsePadding,
    this.trailingIconCollapsed,
    this.trailingIconExpanded,
    this.trailingIconColor,
    this.collapsable = true,
    this.outlined = true,
    this.trailingIconsAnimation = CustomDropdownListTileTrailingIconAnimation.enabled,
    super.key,
  });

  final String title;
  final List<Widget> dropdownItems;
  final Widget? leading;
  final String? subtitle;
  final CustomDropdownListTileRadius? radius;
  final CustomDropdownListTileInitialState initialState;
  final bool nextToCollapse;
  final Color? nextToCollapseColor;
  final double? nextToCollapsePadding;
  final Widget? trailingIconCollapsed;
  final Widget? trailingIconExpanded;
  final Color? trailingIconColor;
  final bool? collapsable;
  final bool outlined;
  final CustomDropdownListTileTrailingIconAnimation? trailingIconsAnimation;

  @override
  State<CustomDropdownListTile> createState() => _CustomDropdownListTileState();
}

class _CustomDropdownListTileState extends State<CustomDropdownListTile>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween = CurveTween(
    curve: Curves.easeIn,
  );
  static final Animatable<double> _halfTween = Tween<double>(
    begin: 0,
    end: 0.5,
  );

  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late Animation<double> _heightFactor;

  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initialState == CustomDropdownListTileInitialState.expanded;

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));

    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  Widget _buildChildren(BuildContext context, Widget? child) {
    return Container(
      decoration: ShapeDecoration(
        color: widget.nextToCollapse && widget.nextToCollapseColor != null
            ? widget.nextToCollapseColor
            : widget.nextToCollapse
                ? context.color.strokeLigth100
                : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            widget.radius == CustomDropdownListTileRadius.soft
                ? context.radius.soft
                : context.radius.hard,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: context.color.backgroundLight0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  widget.radius == CustomDropdownListTileRadius.soft
                      ? context.radius.soft
                      : context.radius.hard,
                ),
                side: BorderSide(
                  color: widget.outlined ? context.color.strokeLigth100 : Colors.transparent,
                ),
              ),
            ),
            child: Splash(
              borderRadius: BorderRadius.circular(
                widget.radius == CustomDropdownListTileRadius.soft
                    ? context.radius.soft
                    : context.radius.hard,
              ),
              onPressed: widget.collapsable != null && !widget.collapsable!
                  ? null
                  : () async => _handleTap(),
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.s4,
                  vertical: widget.subtitle != null || widget.leading == null ? 0 : AppSpacing.s3,
                ),
                leading: widget.leading,
                title: Text(
                  widget.title,
                  style: widget.subtitle != null
                      ? context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        )
                      : context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                ),
                subtitle: widget.subtitle != null
                    ? Text(
                        widget.subtitle!,
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      )
                    : null,
                trailing:
                    widget.trailingIconCollapsed == null && widget.trailingIconExpanded == null
                        ? RotationTransition(
                            turns: widget.trailingIconsAnimation ==
                                    CustomDropdownListTileTrailingIconAnimation.enabled
                                ? _iconTurns
                                : const AlwaysStoppedAnimation(0),
                            child: IconSvg.small(
                              IconAssets.chevronDown,
                              color: widget.trailingIconColor ?? context.color.iconLight900,
                            ),
                          )
                        : RotationTransition(
                            turns: widget.trailingIconsAnimation ==
                                    CustomDropdownListTileTrailingIconAnimation.enabled
                                ? _iconTurns
                                : const AlwaysStoppedAnimation(0),
                            child: _isExpanded
                                ? widget.trailingIconExpanded
                                : widget.trailingIconCollapsed,
                          ),
              ),
            ),
          ),
          ClipRect(
            child: Align(
              heightFactor: _heightFactor.value,
              child: Padding(
                padding: EdgeInsets.only(
                  top: widget.nextToCollapse ? 0 : AppSpacing.s3,
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    widget.nextToCollapse ? widget.nextToCollapsePadding ?? AppSpacing.s3 : 0,
                  ),
                  child: Column(
                    children: [...widget.dropdownItems],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
    );
  }
}
