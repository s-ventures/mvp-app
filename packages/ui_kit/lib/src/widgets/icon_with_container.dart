import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum IconWithContainerSize { small, medium, large }

class IconWithContainer extends StatelessWidget {
  const IconWithContainer({
    super.key,
    this.height = 40,
    this.width = 40,
    this.icon,
    this.text,
    this.foreground = Colors.black,
    this.padding = EdgeInsets.zero,
    this.size = IconWithContainerSize.small,
    this.subIcon,
    this.backgroundColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  final double height;
  final double width;
  final String? icon;
  final String? text;
  final Color foreground;
  final EdgeInsets padding;
  final IconWithContainerSize size;
  final String? subIcon;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Center(
            child: icon != null
                ? IconSvg(
                    icon!,
                    color: foreground == Colors.black
                        ? context.color.iconLight900
                        : foreground,
                    size: size == IconWithContainerSize.small
                        ? 16
                        : size == IconWithContainerSize.medium
                            ? 20
                            : 24,
                  )
                : Text(
                    text!,
                    style: context.textStyle.h6.copyWith(
                      color: foreground,
                    ),
                  ),
          ),
        ),
        if (subIcon != null)
          Positioned(
            bottom: -4,
            right: -4,
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              child: CircleAvatar(
                radius: 8,
                backgroundColor: context.color.neutralLight100,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: context.color.neutralLight100,
                  child: IconSvg.small(
                    subIcon!,
                    color: context.color.iconLight600,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
