import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/erp_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/search/search_quotes_page.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';

class ErpRouter {
  static GoRoute build(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      path: AppRoute.erp.path,
      name: AppRoute.erp.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const ErpPage(),
      ),
      routes: [
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.erpQuotesSearch.path,
          name: AppRoute.erpQuotesSearch.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const SearchQuotesPage(),
          ),
        ),
      ],
    );
  }
}
