import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconSvgSize {
  extraSmall(12),
  small(16),
  medium(24),
  large(32);

  const IconSvgSize(this.value);

  final double value;
}

class IconSvg extends StatelessWidget {
  const IconSvg(
    this.icon, {
    super.key,
    this.color,
    this.size = 24,
  });

  IconSvg.extraSmall(
    this.icon, {
    super.key,
    this.color,
  }) : size = IconSvgSize.extraSmall.value;

  IconSvg.small(
    this.icon, {
    super.key,
    this.color,
  }) : size = IconSvgSize.small.value;

  IconSvg.medium(
    this.icon, {
    super.key,
    this.color,
  }) : size = IconSvgSize.medium.value;

  IconSvg.big(
    this.icon, {
    super.key,
    this.color,
  }) : size = IconSvgSize.large.value;

  final String icon;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: size,
      height: size,
      package: 'ui_kit',
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            ),
    );
  }
}
