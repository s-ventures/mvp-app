import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/analytics/analytics_page.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';

class AnalyticsRouter {
  static GoRoute build(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      path: AppRoute.analytics.path,
      name: AppRoute.analytics.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const AnalyticsPage(),
      ),
    );
  }
}
