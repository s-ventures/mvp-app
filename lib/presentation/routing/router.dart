import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/analitica/analitica_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/erp_page.dart';
import 'package:manifiesto_mvp_app/presentation/protecccion/proteccion_page.dart';
import 'package:manifiesto_mvp_app/presentation/routing/daily_banking/daily_banking_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:manifiesto_mvp_app/presentation/routing/widgets/scaffold_with_bottom_nav_bar.dart';
import 'package:manifiesto_mvp_app/presentation/routing/widgets/web_view_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  // final authRouter = AuthRouter.build();
  final dailyBankingRouter = DailyBankingRouter.build(_rootNavigatorKey);

  return GoRouter(
    initialLocation: AppRoute.dailyBanking.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      // WebView
      GoRoute(
        path: AppRoute.webView.path,
        name: AppRoute.webView.name,
        pageBuilder: (context, state) {
          final params = state.extra! as WebViewPageRouteParams;
          return MaterialPage(
            key: state.pageKey,
            child: WebViewPage(
              url: params.url,
              onNavigationRequest: params.onNavigationRequest,
            ),
          );
        },
      ),
      // // Auth
      // authRouter,

      // Shell Route
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          dailyBankingRouter,

          // ERP
          GoRoute(
            path: AppRoute.negocio.path,
            name: AppRoute.negocio.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ErpPage(),
            ),
          ),

          // CONTACTS
          GoRoute(
            path: AppRoute.agenda.path,
            name: AppRoute.agenda.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const Contacts(),
            ),
          ),

          // ANALYTICS
          GoRoute(
            path: AppRoute.analitica.path,
            name: AppRoute.analitica.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const AnaliticaPage(),
            ),
          ),

          // PROTECCIÓN
          GoRoute(
            path: AppRoute.proteccion.path,
            name: AppRoute.proteccion.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProteccionPage(),
            ),
          ),
        ],
      ),
    ],
    observers: [
      routeObserver,
    ],
    // redirect: (context, state) async {
    // final path = state.uri.path;
    // if (path.startsWith(AppRoute.auth.path)) {
    //   return path;
    // }

    // final isSignedIn = await ref.read(oAuthAuthenticatorProvider).isSignedIn;
    // if (isSignedIn) {
    //   return path;
    // } else {
    //   return AppRoute.auth.path;
    // }
    // },
    // refreshListenable: authStateListenable,
    debugLogDiagnostics: true,
    // errorBuilder: (context, state) =>
    //     ErrorScreen(message: context.tr.somethingWentWrong),
  );
}

/// Route observer to use with RouteAware
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
