import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SegmentedControl<T> extends StatefulWidget {
  const SegmentedControl({
    required this.onChanged,
    required this.values,
    required this.widgetBuilder,
    this.initialValue,
    super.key,
  });

  final ValueChanged<T> onChanged;
  final List<T> values;
  final Widget Function(T) widgetBuilder;
  final T? initialValue;

  @override
  State<SegmentedControl<T>> createState() => _SegmentedControlViewState<T>();
}

class _SegmentedControlViewState<T> extends State<SegmentedControl<T>> {
  late T _typeSelected;

  @override
  void initState() {
    super.initState();
    _typeSelected = widget.initialValue ?? widget.values.first;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ClipPath(
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
      ),
    );
  }

  Iterable<Widget> _buildChildren(BuildContext context) sync* {
    final theme = Theme.of(context);
    final color = context.color.neutralLight100;

    final style1 = context.textStyle.bodyMediumRegular;
    final style2 = context.textStyle.bodyMediumRegular;

    const duration = kThemeAnimationDuration;

    for (final value in widget.values) {
      yield Expanded(
        child: Container(
          color: color,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: GestureDetector(
            onTap: () {
              widget.onChanged(value);
              setState(() {
                _typeSelected = value;
              });
            },
            child: AnimatedContainer(
              duration: duration,
              decoration: BoxDecoration(
                color: _typeSelected == value ? Colors.white : color,
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              alignment: Alignment.center,
              child: AnimatedTheme(
                data: theme,
                child: AnimatedDefaultTextStyle(
                  duration: duration,
                  style: _typeSelected == value ? style2 : style1,
                  child: widget.widgetBuilder(value),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
