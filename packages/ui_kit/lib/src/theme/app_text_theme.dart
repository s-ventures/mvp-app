import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_kit/src/theme/app_theme_color_scheme.dart';

class AppTextTheme extends TextTheme {
  const AppTextTheme({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.subtitleLarge,
    required this.subtitleSmall,
    required this.bodyMediumRegular,
    required this.bodyMediumSemiBold,
    required this.bodyMediumBold,
    required this.bodySmallRegular,
    required this.bodySmallSemiBold,
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
    required this.buttonExtraSmall,
    required this.buttonTabBar,
    required this.buttonLink,
  }) : super();

  factory AppTextTheme.byColorScheme(
    AppThemeColorScheme colorScheme,
  ) =>
      AppTextTheme(
        h1: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w400,
            fontSize: 96,
            height: 120 / 96,
            letterSpacing: -1.5,
          ),
        ),
        h2: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w400,
            fontSize: 64,
            height: 84 / 64,
            letterSpacing: -0.5,
          ),
        ),
        h3: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w500,
            fontSize: 48,
            height: 84 / 48,
            letterSpacing: -1,
          ),
        ),
        h4: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w500,
            fontSize: 34,
            height: 44 / 34,
            letterSpacing: -1,
          ),
        ),
        h5: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            height: 32 / 24,
            letterSpacing: -1.5,
          ),
        ),
        h6: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 28 / 20,
            letterSpacing: -1.5,
          ),
        ),
        subtitleLarge: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            height: 24 / 18,
            letterSpacing: -1,
          ),
        ),
        subtitleSmall: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            height: 20 / 14,
            letterSpacing: 1.5,
          ),
        ),
        bodyMediumRegular: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -.5,
          ),
        ),
        bodyMediumSemiBold: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -.5,
          ),
        ),
        bodyMediumBold: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -.5,
          ),
        ),
        bodySmallRegular: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 22 / 14,
          ),
        ),
        bodySmallSemiBold: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            height: 22 / 14,
            letterSpacing: .3,
          ),
        ),
        buttonLarge: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            // height: 24 / 18,
            // letterSpacing: -1,
          ),
        ),
        buttonMedium: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            // height: 24 / 16,
            // letterSpacing: 1,
          ),
        ),
        buttonSmall: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        buttonExtraSmall: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        buttonTabBar: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w500,
            fontSize: 12,
            height: 14 / 12,
            // letterSpacing: 1.5,
          ),
        ),
        buttonLink: AppThemeTextStyle(colorScheme).merge(
          GoogleFonts.notoSans(
            color: colorScheme.textLight900,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 24 / 16,
            letterSpacing: -.5,
          ),
        ),
      );

  final AppThemeTextStyle h1;
  final AppThemeTextStyle h2;
  final AppThemeTextStyle h3;
  final AppThemeTextStyle h4;
  final AppThemeTextStyle h5;
  final AppThemeTextStyle h6;
  final AppThemeTextStyle subtitleLarge;
  final AppThemeTextStyle subtitleSmall;
  final AppThemeTextStyle bodyMediumRegular;
  final AppThemeTextStyle bodyMediumSemiBold;
  final AppThemeTextStyle bodyMediumBold;
  final AppThemeTextStyle bodySmallRegular;
  final AppThemeTextStyle bodySmallSemiBold;
  final AppThemeTextStyle buttonLarge;
  final AppThemeTextStyle buttonMedium;
  final AppThemeTextStyle buttonSmall;
  final AppThemeTextStyle buttonExtraSmall;
  final AppThemeTextStyle buttonTabBar;
  final AppThemeTextStyle buttonLink;
}

class AppThemeTextStyle extends TextStyle {
  const AppThemeTextStyle(
    this.colorScheme, {
    super.inherit,
    super.color,
    super.backgroundColor,
    super.fontFamily,
    super.fontFamilyFallback,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.locale,
    super.foreground,
    super.background,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.shadows,
    super.fontFeatures,
  });

  final AppThemeColorScheme colorScheme;

  @override
  AppThemeTextStyle copyWith({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return AppThemeTextStyle(
      colorScheme,
      inherit: inherit ?? this.inherit,
      color: this.foreground == null && foreground == null ? color ?? this.color : null,
      backgroundColor: this.background == null && background == null ? backgroundColor ?? this.backgroundColor : null,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      locale: locale ?? this.locale,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
    );
  }

  @override
  AppThemeTextStyle merge(TextStyle? other) {
    final merged = super.merge(other);

    return copyWith(
      inherit: merged.inherit,
      color: merged.color,
      backgroundColor: merged.backgroundColor,
      fontFamily: merged.fontFamily,
      fontFamilyFallback: merged.fontFamilyFallback,
      fontSize: merged.fontSize,
      fontWeight: merged.fontWeight,
      fontStyle: merged.fontStyle,
      letterSpacing: merged.letterSpacing,
      wordSpacing: merged.wordSpacing,
      textBaseline: merged.textBaseline,
      height: merged.height,
      locale: merged.locale,
      foreground: merged.foreground,
      background: merged.background,
      shadows: merged.shadows,
      fontFeatures: merged.fontFeatures,
      decoration: merged.decoration,
      decorationColor: merged.decorationColor,
      decorationStyle: merged.decorationStyle,
      decorationThickness: merged.decorationThickness,
      debugLabel: merged.debugLabel,
    );
  }
}
