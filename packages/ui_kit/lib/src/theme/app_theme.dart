import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_radius.dart';
import 'package:ui_kit/src/theme/theme.dart';
import 'package:ui_kit/src/widgets/tab_bar/custom_tab_bar_indicator.dart';

class AppTheme {
  AppTheme({
    required this.theme,
    required this.radius,
    required this.textStyle,
    required this.shimmer,
    required this.color,
  });
  factory AppTheme.initializeTheme({
    required AppThemeColorScheme colorScheme,
    required ThemeData baseThemeData,
  }) {
    final textStyle = AppTextTheme.byColorScheme(colorScheme);

    return AppTheme(
      color: colorScheme,
      theme: _createBaseThemeData(
        colorScheme,
        textStyle,
        baseThemeData,
      ),
      textStyle: textStyle,
      shimmer: AppShimmerThemeExtension(
        colors: [
          colorScheme.secondaryLight100,
          colorScheme.strokeLigth100,
          colorScheme.primaryLight100,
          colorScheme.secondaryLight100,
        ],
      ),
      radius: const AppRadius(),
    );
  }

  static AppTheme darkTheme = AppTheme.initializeTheme(
    colorScheme: AppThemeColorScheme.dark,
    baseThemeData: ThemeData.dark(),
  );

  static AppTheme lightTheme = AppTheme.initializeTheme(
    colorScheme: AppThemeColorScheme.light,
    baseThemeData: ThemeData.light(),
  );

  static Iterable<AppTheme> themes = [lightTheme, darkTheme];

  final ThemeData theme;
  final AppRadius radius;
  final AppTextTheme textStyle;
  final AppShimmerThemeExtension shimmer;
  final AppThemeColorScheme color;

  bool get isDark => this == darkTheme;

  static AppTheme of(BuildContext context) {
    final brightness = MediaQueryData.fromView(
      View.of(context),
    ).platformBrightness;
    return brightness == Brightness.dark
        ? AppTheme.darkTheme
        : AppTheme.lightTheme;
  }

  static ThemeData _createBaseThemeData(
    AppThemeColorScheme colorScheme,
    AppTextTheme textStyle,
    ThemeData baseThemeData,
  ) =>
      baseThemeData.copyWith(
        colorScheme: colorScheme,
        textTheme: textStyle,
        scaffoldBackgroundColor: colorScheme.backgroundLight200,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedItemColor: colorScheme.textLight900,
          backgroundColor: colorScheme.backgroundLight0,
          selectedLabelStyle: textStyle.buttonTabBar.copyWith(
            letterSpacing: 1,
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: colorScheme.textLight600,
          unselectedLabelColor: colorScheme.textLight600,
          labelStyle: textStyle.bodySmallSemiBold,
          unselectedLabelStyle: textStyle.bodySmallSemiBold,
          indicator: CustomTabBarIndicator(),
          indicatorSize: TabBarIndicatorSize.tab,
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return colorScheme.secondaryLight600;
              }
              return colorScheme.neutralLight100;
            },
          ),
          overlayColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered)) {
                return colorScheme.secondaryLight600.withOpacity(0.04);
              }
              return colorScheme.secondaryLight600.withOpacity(0.12);
            },
          ),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: colorScheme.bottomSheetBackground,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return colorScheme.secondaryLight600;
              }
              return colorScheme.backgroundLight0;
            },
          ),
          side: MaterialStateBorderSide.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return BorderSide(
                  color: colorScheme.secondaryLight600,
                  width: 2,
                );
              }
              return BorderSide(
                color: colorScheme.strokeLigth200,
                width: 2,
              );
            },
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          visualDensity: VisualDensity.comfortable,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: colorScheme.secondaryLight300,
          inactiveTrackColor: colorScheme.strokeLigth200,
          thumbColor: colorScheme.backgroundLight200,
          overlayColor: colorScheme.secondaryLight600.withOpacity(0.3),
          trackHeight: 1,
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return colorScheme.backgroundLight0;
              }
              return colorScheme.backgroundLight0;
            },
          ),
          trackColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return colorScheme.secondaryLight600;
              }
              return colorScheme.strokeLigth200;
            },
          ),
        ),
      );
}

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    required this.appTheme,
    required super.child,
    super.key,
  });

  final AppTheme appTheme;

  ThemeData get theme => appTheme.theme;
  AppRadius get radius => appTheme.radius;
  AppTextTheme get textStyle => appTheme.textStyle;
  AppShimmerThemeExtension get shimmer => appTheme.shimmer;
  AppThemeColorScheme get color => appTheme.color;

  static ThemeProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) =>
      oldWidget.appTheme.theme.brightness != appTheme.theme.brightness;
}
