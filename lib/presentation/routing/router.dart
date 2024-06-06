import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/analytics/analytics_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/contacts/contacts_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/daily_banking/daily_banking_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/erp/erp_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/protection/protection_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:manifiesto_mvp_app/presentation/routing/transversal/transversal_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/widgets/scaffold_with_bottom_nav_bar.dart';
import 'package:manifiesto_mvp_app/presentation/routing/widgets/web_view_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  final dailyBankingRouter = DailyBankingRouter.build(_rootNavigatorKey);
  final contactsRouter = ContactsRouter.build(_rootNavigatorKey);
  final erpRouter = ErpRouter.build(_rootNavigatorKey);
  final protectionRouter = ProtectionRouter.build(_rootNavigatorKey);
  final analyticsRouter = AnalyticsRouter.build(_rootNavigatorKey);
  final transversalRouter = TransversalRouter.build(_rootNavigatorKey);

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
      // Shell Route
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          dailyBankingRouter,
          contactsRouter,
          erpRouter,
          protectionRouter,
          analyticsRouter,
          transversalRouter,
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
final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();
