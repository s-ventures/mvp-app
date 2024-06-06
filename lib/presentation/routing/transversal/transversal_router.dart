import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:manifiesto_mvp_app/presentation/transversal/options/help/faqs/help_faqs_page.dart';
import 'package:manifiesto_mvp_app/presentation/transversal/options/help/transversal_help_page.dart';
import 'package:manifiesto_mvp_app/presentation/transversal/transversal_page.dart';

class TransversalRouter {
  static GoRoute build(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      path: AppRoute.transversal.path,
      name: AppRoute.transversal.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const TransversalPage(),
      ),
      routes: [
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.transversalHelp.path,
          name: AppRoute.transversalHelp.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const TransversalHelpPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.transversalHelpFaqs.path,
              name: AppRoute.transversalHelpFaqs.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const HelpFaqsPage(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
