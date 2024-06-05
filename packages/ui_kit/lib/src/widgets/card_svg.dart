import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class CardSvg extends StatelessWidget {
  const CardSvg({
    required this.svg,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
    super.key,
  });

  const CardSvg.basic({
    super.key,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
  }) : svg = CardAssets.basic;

  const CardSvg.premium({
    super.key,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
  }) : svg = CardAssets.premium;

  final String svg;
  final BoxFit fit;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svg,
      package: 'ui_kit',
      fit: fit,
      height: height,
      width: width,
    );
  }
}
