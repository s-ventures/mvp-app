import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/erp_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/expenses/search/search_expenses_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/search/search_invoices_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/details/quotes_details_page.dart';
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
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.erpQuotesDetails.path,
          name: AppRoute.erpQuotesDetails.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const QuotesDetailsPage(),
          ),
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.erpInvoicesSearch.path,
          name: AppRoute.erpInvoicesSearch.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const SearchInvoicesPage(),
          ),
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.erpExpensesSearch.path,
          name: AppRoute.erpExpensesSearch.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const SearchExpensesPage(),
          ),
        ),
      ],
    );
  }
}
