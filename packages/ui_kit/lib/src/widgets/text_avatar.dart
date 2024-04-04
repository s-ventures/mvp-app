import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TextAvatar extends StatelessWidget {
  const TextAvatar({
    required this.backgroundColor,
    required this.text,
    this.textStyle,
    super.key,
  });

  final Color backgroundColor;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(context.radius.soft),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle ?? const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
