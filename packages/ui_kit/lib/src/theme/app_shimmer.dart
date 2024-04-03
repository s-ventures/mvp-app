import 'package:flutter/material.dart';

class AppShimmerThemeExtension extends ThemeExtension<AppShimmerThemeExtension> {
  const AppShimmerThemeExtension({
    this.colors = const [
      Color(0x1C1B1F1F),
      Color(0xFFF1ECDA),
      Color(0xFF694CD3),
      Color(0x1C1B1F1F),
    ],
  });

  final List<Color> colors;

  @override
  ThemeExtension<AppShimmerThemeExtension> copyWith({
    List<Color>? colors,
  }) =>
      AppShimmerThemeExtension(colors: colors ?? this.colors);

  @override
  ThemeExtension<AppShimmerThemeExtension> lerp(
    covariant ThemeExtension<AppShimmerThemeExtension>? other,
    double t,
  ) {
    if (other! is AppShimmerThemeExtension) {
      return this;
    }

    final tempShimmerColors = List<Color>.empty(growable: true);

    if (colors.length == (other as AppShimmerThemeExtension).colors.length) {
      for (var i = 0; i < colors.length; i++) {
        tempShimmerColors.add(
          Color.lerp(
                colors[i],
                other.colors[i],
                t,
              ) ??
              colors[i],
        );
      }
    } else {
      tempShimmerColors.addAll(colors);
    }
    return AppShimmerThemeExtension(
      colors: tempShimmerColors,
    );
  }
}
