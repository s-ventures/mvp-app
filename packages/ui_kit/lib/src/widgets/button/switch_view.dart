import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum SwitchViewType { grid, list }

extension SwitchViewTypeExtension on SwitchViewType {
  Widget get icon {
    switch (this) {
      case SwitchViewType.grid:
        return IconSvg.small(IconAssets.gripSolid);
      case SwitchViewType.list:
        return IconSvg.small(IconAssets.gripLines);
      default:
        throw 'Invalid SwitchViewType: $this';
    }
  }
}

class SwitchView extends StatefulWidget {
  const SwitchView({
    required this.onChanged,
    super.key,
  });

  final ValueChanged<SwitchViewType> onChanged;

  @override
  State<SwitchView> createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {
  SwitchViewType _typeSelected = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
          side: BorderSide(color: context.color.neutralLight200),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [..._buildChildren(context)],
        ),
      ),
    );
  }

  Iterable<Widget> _buildChildren(BuildContext context) sync* {
    final theme = Theme.of(context);
    final color = context.color.neutralLight100;

    final style1 = context.textStyle.bodyMediumRegular;
    final style2 = context.textStyle.bodyMediumRegular;

    const duration = kThemeAnimationDuration;

    for (int i = 0; i < SwitchViewType.values.length; i++) {
      yield Container(
        color: color,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: GestureDetector(
          onTap: () {
            widget.onChanged(SwitchViewType.values[i]);
            setState(() {
              _typeSelected = SwitchViewType.values[i];
            });
          },
          child: AnimatedContainer(
            duration: duration,
            decoration: BoxDecoration(
              color: _typeSelected == SwitchViewType.values[i] ? Colors.white : color,
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            alignment: Alignment.center,
            child: AnimatedTheme(
              data: theme,
              child: AnimatedDefaultTextStyle(
                duration: duration,
                style: _typeSelected == SwitchViewType.values[i] ? style2 : style1,
                child: SwitchViewType.values[i].icon,
              ),
            ),
          ),
        ),
      );
    }
  }
}
