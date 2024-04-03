import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_radius.dart';
import 'package:ui_kit/src/theme/theme.dart';

extension ThemeX on BuildContext {
  AppTextTheme get textStyle => ThemeProvider.of(this).textStyle;

  AppThemeColorScheme get color => ThemeProvider.of(this).color;

  ThemeData get theme => ThemeProvider.of(this).theme;

  AppRadius get radius => ThemeProvider.of(this).radius;

  AppShimmerThemeExtension get shimmer => ThemeProvider.of(this).shimmer;
}

extension AppThemeTextStyleX on AppThemeTextStyle {
  TextStyle get brandPrimary => copyWith(
        color: colorScheme.primaryLight600,
      );
  TextStyle get onBrandPrimary => copyWith(
        color: colorScheme.secondaryLight600,
      );
  TextStyle get onBrandSecondary => copyWith(
        color: colorScheme.secondaryLight800,
      );
  TextStyle get textPrimary => copyWith(
        color: colorScheme.strokeLigth600,
      );
  TextStyle get neutralPrimary => copyWith(
        color: colorScheme.secondaryLight100,
      );
  TextStyle get surfacePrimary => copyWith(
        color: colorScheme.strokeLigth100,
      );
  TextStyle get brandSecondary => copyWith(
        color: colorScheme.backgroundLight0,
      );
  TextStyle get errorPrimary => copyWith(
        color: colorScheme.backgroundDark800,
      );
  TextStyle get background => copyWith(
        color: colorScheme.background,
      );
  TextStyle get overlayBackground => copyWith(
        color: colorScheme.textDark900,
      );
  TextStyle get onErrorPrimary => copyWith(
        color: colorScheme.textLight600,
      );
  TextStyle get overlayText => copyWith(
        color: colorScheme.iconLight900,
      );
  TextStyle get errorSecondary => copyWith(
        color: colorScheme.primaryLight100,
      );
  TextStyle get overlayBrandPrimary => copyWith(
        color: colorScheme.iconLight0,
      );
  TextStyle get onErrorSecondary => copyWith(
        color: colorScheme.textLight900,
      );
  TextStyle get textSecondary => copyWith(
        color: colorScheme.strokeLigth900,
      );
  TextStyle get ratingStar => copyWith(
        color: colorScheme.iconDark0,
      );
  TextStyle get successPrimary => copyWith(
        color: colorScheme.iconDark600,
      );
  TextStyle get disabled => copyWith(
        color: colorScheme.backgroundLight200,
      );
  TextStyle get graphPrimary => copyWith(
        color: colorScheme.primaryLight300,
      );
  TextStyle get graphSecondary => copyWith(
        color: colorScheme.primaryLight600,
      );
  TextStyle get graphTertiary => copyWith(
        color: colorScheme.primaryLight800,
      );
  TextStyle get neutralSecondary => copyWith(
        color: colorScheme.secondaryLight300,
      );
  TextStyle get onDisabled => copyWith(
        color: colorScheme.textLight0,
      );
  TextStyle get onSuccessPrimary => copyWith(
        color: colorScheme.textDark0,
      );
  TextStyle get onSuccessSecondary => copyWith(
        color: colorScheme.textDark600,
      );
  TextStyle get overlayNeutral => copyWith(
        color: colorScheme.iconLight300,
      );
  TextStyle get overlayOnBrandPrimary => copyWith(
        color: colorScheme.iconLight600,
      );
  TextStyle get skeleton => copyWith(
        color: colorScheme.iconDark300,
      );
  TextStyle get successSecondary => copyWith(
        color: colorScheme.iconDark900,
      );
  TextStyle get surfaceSecondary => copyWith(
        color: colorScheme.strokeLigth200,
      );
}

extension TextStyleModeX on TextStyle {
  TextStyle get regular => copyWith(
        fontWeight: FontWeight.w400,
      );
  TextStyle get medium => copyWith(
        fontWeight: FontWeight.w500,
      );
  TextStyle get semibold => copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get underlined => copyWith(
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      );
}

extension ColorFilterX on Color {
  ColorFilter get filter => ColorFilter.mode(
        this,
        BlendMode.srcIn,
      );
}
