import 'package:flutter/material.dart';

abstract class AppThemeColorScheme extends ColorScheme {
  const AppThemeColorScheme({
    required super.brightness,
    required this.backgroundLight0,
    required this.backgroundLight200,
    required this.backgroundDark800,
    required this.backgroundDark900,
    required this.primaryLight100,
    required this.primaryLight300,
    required this.primaryLight600,
    required this.primaryLight800,
    required this.secondaryLight100,
    required this.secondaryLight300,
    required this.secondaryLight600,
    required this.secondaryLight800,
    required this.tertiaryLight100,
    required this.tertiaryLight200,
    required this.tertiaryLight300,
    required this.tertiaryLight400,
    required this.tertiaryLight500,
    required this.tertiaryLight600,
    required this.tertiaryLight700,
    required this.tertiaryLight800,
    required this.textLight0,
    required this.textLight300,
    required this.textLight600,
    required this.textLight900,
    required this.textDark0,
    required this.textDark300,
    required this.textDark600,
    required this.textDark900,
    required this.iconLight0,
    required this.iconLight300,
    required this.iconLight600,
    required this.iconLight900,
    required this.iconDark0,
    required this.iconDark300,
    required this.iconDark600,
    required this.iconDark900,
    required this.strokeLigth100,
    required this.strokeLigth200,
    required this.strokeLigth600,
    required this.strokeLigth900,
    required this.strokeDark0,
    required this.strokeDark200,
    required this.strokeDark600,
    required this.strokeDark900,
    required this.neutralLight0,
    required this.neutralLight100,
    required this.neutralLight200,
    required this.neutralLight300,
    required this.neutralLight400,
    required this.neutralLight500,
    required this.neutralLight600,
    required this.neutralLight900,
    required this.neutralDark0,
    required this.neutralDark100,
    required this.neutralDark200,
    required this.neutralDark300,
    required this.neutralDark400,
    required this.neutralDark500,
    required this.neutralDark600,
    required this.neutralDark900,
    required this.bottomSheetBackground,
    required this.statusError,
    required this.statusWarning,
    required this.statusSuccess,
    required this.statusInfo,
    required this.customerForeground,
    required this.customerBackground,
    required this.supplierBackground,
    required this.supplierForeground,
  }) : super(
          primary: primaryLight600,
          secondary: secondaryLight600,
          tertiary: tertiaryLight600,
          surface: backgroundLight200,
          background: backgroundLight0,
          error: statusError,
          onPrimary: backgroundLight0,
          onSecondary: backgroundDark800,
          onSurface: backgroundDark800,
          onBackground: backgroundLight200,
          onError: backgroundLight0,
        );

  static LightColorScheme light = const LightColorScheme();
  static DarkColorScheme dark = const DarkColorScheme();

  final Color backgroundLight0;
  final Color backgroundLight200;
  final Color backgroundDark800;
  final Color backgroundDark900;
  final Color primaryLight100;
  final Color primaryLight300;
  final Color primaryLight600;
  final Color primaryLight800;
  final Color secondaryLight100;
  final Color secondaryLight300;
  final Color secondaryLight600;
  final Color secondaryLight800;
  final Color tertiaryLight100;
  final Color tertiaryLight200;
  final Color tertiaryLight300;
  final Color tertiaryLight400;
  final Color tertiaryLight500;
  final Color tertiaryLight600;
  final Color tertiaryLight700;
  final Color tertiaryLight800;
  final Color textLight0;
  final Color textLight300;
  final Color textLight600;
  final Color textLight900;
  final Color textDark0;
  final Color textDark300;
  final Color textDark600;
  final Color textDark900;
  final Color iconLight0;
  final Color iconLight300;
  final Color iconLight600;
  final Color iconLight900;
  final Color iconDark0;
  final Color iconDark300;
  final Color iconDark600;
  final Color iconDark900;
  final Color strokeLigth100;
  final Color strokeLigth200;
  final Color strokeLigth600;
  final Color strokeLigth900;
  final Color strokeDark0;
  final Color strokeDark200;
  final Color strokeDark600;
  final Color strokeDark900;
  final Color neutralLight0;
  final Color neutralLight100;
  final Color neutralLight200;
  final Color neutralLight300;
  final Color neutralLight400;
  final Color neutralLight500;
  final Color neutralLight600;
  final Color neutralLight900;
  final Color neutralDark0;
  final Color neutralDark100;
  final Color neutralDark200;
  final Color neutralDark300;
  final Color neutralDark400;
  final Color neutralDark500;
  final Color neutralDark600;
  final Color neutralDark900;
  final Color bottomSheetBackground;
  final Color statusError;
  final Color statusWarning;
  final Color statusSuccess;
  final Color statusInfo;
  final Color customerForeground;
  final Color customerBackground;
  final Color supplierForeground;
  final Color supplierBackground;
}

class LightColorScheme extends AppThemeColorScheme {
  const LightColorScheme()
      : super(
          brightness: Brightness.light,
          backgroundLight0: const Color(0xFFFFFFFF),
          backgroundLight200: const Color(0xFFF7F8F9),
          backgroundDark800: const Color(0xFF2A2C30),
          backgroundDark900: const Color(0xFF13131D),
          primaryLight100: const Color(0xFFC6C8D9),
          primaryLight300: const Color(0xFF9595AD),
          primaryLight600: const Color(0xFF303048),
          primaryLight800: const Color(0xFF13131D),
          secondaryLight100: const Color(0xFFEAF3D2),
          secondaryLight300: const Color(0xFFBFDA79),
          secondaryLight600: const Color(0xFF95C11F),
          secondaryLight800: const Color(0xFF3C4D0C),
          tertiaryLight100: const Color(0xFFE5EAFC),
          tertiaryLight200: const Color(0xFFC6D2FD),
          tertiaryLight300: const Color(0xFF93AAFD),
          tertiaryLight400: const Color(0xFF5F82FF),
          tertiaryLight500: const Color(0xFF4A3AFF),
          tertiaryLight600: const Color(0xFF3B2ECF),
          tertiaryLight700: const Color(0xFF2D23A0),
          tertiaryLight800: const Color(0xFF1E1770),
          textLight0: const Color(0xFFFFFFFF),
          textLight300: const Color(0xFFB0B0B2),
          textLight600: const Color(0xFF6C6C70),
          textLight900: const Color(0xFF13131D),
          textDark0: const Color(0xFF13131D),
          textDark300: const Color(0xFFC9C9C9),
          textDark600: const Color(0xFFAEAEB2),
          textDark900: const Color(0xFFFAFAFA),
          iconLight0: const Color(0xFFFFFFFF),
          iconLight300: const Color(0xFFB0B0B2),
          iconLight600: const Color(0xFF5F5F70),
          iconLight900: const Color(0xFF13131D),
          iconDark0: const Color(0xFF13131D),
          iconDark300: const Color(0xFFC9C9C9),
          iconDark600: const Color(0xFFD4D4DF),
          iconDark900: const Color(0xFFFAFAFA),
          strokeLigth100: const Color(0xFFF4F4FC),
          strokeLigth200: const Color(0xFFD4D4DF),
          strokeLigth600: const Color(0xFF5F5F70),
          strokeLigth900: const Color(0xFF13131D),
          strokeDark0: const Color(0xFF13131D),
          strokeDark200: const Color(0xFF5F5F70),
          strokeDark600: const Color(0xFFD4D4DF),
          strokeDark900: const Color(0xFFF4F4FC),
          neutralLight0: const Color(0xFFFFFFFF),
          neutralLight100: const Color(0xFFEBEBF0),
          neutralLight200: const Color(0xFFD8D8DC),
          neutralLight300: const Color(0xFFBCBCC0),
          neutralLight400: const Color(0xFFAEAEB2),
          neutralLight500: const Color(0xFF8E8E93),
          neutralLight600: const Color(0xFF6C6C70),
          neutralLight900: const Color(0xFF151618),
          neutralDark0: const Color(0xFF151618),
          neutralDark100: const Color(0xFF242426),
          neutralDark200: const Color(0xFF363638),
          neutralDark300: const Color(0xFF444446),
          neutralDark400: const Color(0xFF545456),
          neutralDark500: const Color(0xFF7C7C80),
          neutralDark600: const Color(0xFFAEAEB2),
          neutralDark900: const Color(0xFFFFFFFF),
          bottomSheetBackground: const Color(0xFFFAFAFA),
          statusError: const Color(0xFFFF3B30),
          statusWarning: const Color(0xFFFFCC00),
          statusSuccess: const Color(0xFF34C759),
          statusInfo: const Color(0xFF6392F8),
          customerBackground: const Color(0xFFE9E8F7),
          customerForeground: const Color(0xFF5104B4),
          supplierBackground: const Color(0xFFFFEFCF),
          supplierForeground: const Color(0xFFFF8A00),
        );
}

class DarkColorScheme extends AppThemeColorScheme {
  const DarkColorScheme()
      : super(
          brightness: Brightness.light,
          backgroundLight0: const Color(0xFFFFFFFF),
          backgroundLight200: const Color(0xFFF7F8F9),
          backgroundDark800: const Color(0xFF2A2C30),
          backgroundDark900: const Color(0xFF13131D),
          primaryLight100: const Color(0xFFC6C8D9),
          primaryLight300: const Color(0xFF4E4E65),
          primaryLight600: const Color(0xFF303048),
          primaryLight800: const Color(0xFF13131D),
          secondaryLight100: const Color(0xFFEAF3D2),
          secondaryLight300: const Color(0xFFBFDA79),
          secondaryLight600: const Color(0xFF95C11F),
          secondaryLight800: const Color(0xFF3C4D0C),
          tertiaryLight100: const Color(0xFFE5EAFC),
          tertiaryLight200: const Color(0xFFC6D2FD),
          tertiaryLight300: const Color(0xFF93AAFD),
          tertiaryLight400: const Color(0xFF5F82FF),
          tertiaryLight500: const Color(0xFF4A3AFF),
          tertiaryLight600: const Color(0xFF3B2ECF),
          tertiaryLight700: const Color(0xFF2D23A0),
          tertiaryLight800: const Color(0xFF1E1770),
          textLight0: const Color(0xFFFFFFFF),
          textLight300: const Color(0xFFB0B0B2),
          textLight600: const Color(0xFF6C6C70),
          textLight900: const Color(0xFF13131D),
          textDark0: const Color(0xFF13131D),
          textDark300: const Color(0xFFC9C9C9),
          textDark600: const Color(0xFFAEAEB2),
          textDark900: const Color(0xFFFAFAFA),
          iconLight0: const Color(0xFFFFFFFF),
          iconLight300: const Color(0xFF95C11F),
          iconLight600: const Color(0xFF5F5F70),
          iconLight900: const Color(0xFF13131D),
          iconDark0: const Color(0xFF13131D),
          iconDark300: const Color(0xFFA1D31D),
          iconDark600: const Color(0xFFD4D4DF),
          iconDark900: const Color(0xFFFAFAFA),
          strokeLigth100: const Color(0xFFF4F4FC),
          strokeLigth200: const Color(0xFFD4D4DF),
          strokeLigth600: const Color(0xFF5F5F70),
          strokeLigth900: const Color(0xFF13131D),
          strokeDark0: const Color(0xFF13131D),
          strokeDark200: const Color(0xFF5F5F70),
          strokeDark600: const Color(0xFFD4D4DF),
          strokeDark900: const Color(0xFFF4F4FC),
          neutralLight0: const Color(0xFFFFFFFF),
          neutralLight100: const Color(0xFFEBEBF0),
          neutralLight200: const Color(0xFFD8D8DC),
          neutralLight300: const Color(0xFFBCBCC0),
          neutralLight400: const Color(0xFFAEAEB2),
          neutralLight500: const Color(0xFF8E8E93),
          neutralLight600: const Color(0xFF6C6C70),
          neutralLight900: const Color(0xFF151618),
          neutralDark0: const Color(0xFF151618),
          neutralDark100: const Color(0xFF242426),
          neutralDark200: const Color(0xFF363638),
          neutralDark300: const Color(0xFF444446),
          neutralDark400: const Color(0xFF545456),
          neutralDark500: const Color(0xFF7C7C80),
          neutralDark600: const Color(0xFFAEAEB2),
          neutralDark900: const Color(0xFFFFFFFF),
          bottomSheetBackground: const Color(0xFFFAFAFA),
          statusError: const Color(0xFFFF3B30),
          statusWarning: const Color(0xFFFFCC00),
          statusSuccess: const Color(0xFF34C759),
          statusInfo: const Color(0xFF6392F8),
          customerBackground: const Color(0xFFE9E8F7),
          customerForeground: const Color(0xFF5104B4),
          supplierBackground: const Color(0xFFFFEFCF),
          supplierForeground: const Color(0xFFFF8A00),
        );
}
