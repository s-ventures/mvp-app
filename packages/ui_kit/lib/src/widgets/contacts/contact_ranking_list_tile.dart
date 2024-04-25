import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactRankingListTile extends StatefulWidget {
  const ContactRankingListTile({
    required this.leading,
    required this.contact,
    required this.amount,
    required this.lineBarChart,
    this.onExpansionChanged,
    super.key,
  });

  final Widget leading;
  final String contact;
  final String amount;
  final ValueChanged<bool>? onExpansionChanged;
  final Widget lineBarChart;

  @override
  State<ContactRankingListTile> createState() => _ContactRankingListTileState();
}

class _ContactRankingListTileState extends State<ContactRankingListTile>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0, end: 0.5);

  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late Animation<double> _heightFactor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
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
    widget.onExpansionChanged?.call(_isExpanded);
  }

  Widget _buildChildren(BuildContext context, Widget? child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTileTheme.merge(
          child: ListTile(
            tileColor: context.color.backgroundLight0,
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
              vertical: AppSpacing.s3,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.radius.soft),
            ),
            onTap: _handleTap,
            leading: widget.leading,
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.contact,
                    style: context.textStyle.bodySmallRegular,
                  ),
                ),
                Text(
                  widget.amount,
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ],
            ),
            trailing: RotationTransition(
              turns: _iconTurns,
              child: IconSvg.small(IconAssets.chevronDown),
            ),
          ),
        ),
        ClipRect(
          child: Align(
            heightFactor: _heightFactor.value,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.neutralLight100,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    widget.lineBarChart,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
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
