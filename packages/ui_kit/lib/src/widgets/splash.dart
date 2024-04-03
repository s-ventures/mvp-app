import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({
    super.key,
    this.borderRadius = BorderRadius.zero,
    this.onPressed,
    required this.child
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
          onTap: () => onPressed?.call(),
          child: child
        ),
      ),
    );
  }
}