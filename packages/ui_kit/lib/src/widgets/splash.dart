import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({
    required this.child,
    this.borderRadius = BorderRadius.zero,
    this.onPressed,
    super.key,
  });

  final BorderRadius borderRadius;
  final Future<void> Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onPressed != null ? () => onPressed!.call() : null,
          child: child,
        ),
      ),
    );
  }
}
