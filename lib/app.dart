import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:manifiesto_mvp_app/l10n/app_localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/router.dart';
import 'package:ui_kit/ui_kit.dart';

final _scaffoldKey = GlobalKey<ScaffoldState>();

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = AppTheme.of(context);
    final router = ref.watch(routerProvider);

    GoogleFonts.config.allowRuntimeFetching = false;

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme.theme,
      // TODO(localization): Uncomment when localization is needed
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      // routeInformationParser: router.routeInformationParser,
      // routerDelegate: router.routerDelegate,
      // routeInformationProvider: router.routeInformationProvider,
      routerConfig: router,
      builder: (context, child) => Builder(
        builder: (context) => ThemeProvider(
          appTheme: appTheme,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            key: _scaffoldKey,
            body: child,
          ),
        ),
      ),
    );
  }
}
