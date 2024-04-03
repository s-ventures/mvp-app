import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconSvgSize {
  small(16),
  medium(24),
  large(32);

  const IconSvgSize(this.value);

  final double value;
}

class IconSvg extends StatelessWidget {
  const IconSvg(
    this.icon, {
    Key? key,
    this.color,
    this.size = 24,
  }) : super(key: key);

  IconSvg.small(
    this.icon, {
    Key? key,
    this.color,
  })  : size = IconSvgSize.small.value,
        super(key: key);

  IconSvg.medium(
    this.icon, {
    Key? key,
    this.color,
  })  : size = IconSvgSize.medium.value,
        super(key: key);

  IconSvg.big(
    this.icon, {
    Key? key,
    this.color,
  })  : size = IconSvgSize.large.value,
        super(key: key);

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
