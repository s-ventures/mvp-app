// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:manifiesto_mvp_app/presentation/auth/auth_page.dart';
// import 'package:manifiesto_mvp_app/presentation/auth/auth_webview_page.dart';
// import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';

// class AuthRouter {
//   static GoRoute build() {
//     return GoRoute(
//       // parentNavigatorKey: _rootNavigatorKey,
//       path: AppRoute.auth.path,
//       name: AppRoute.auth.name,
//       pageBuilder: (context, state) => MaterialPage(
//         key: state.pageKey,
//         child: const AuthPage(),
//       ),
//       routes: [
//         GoRoute(
//           path: AppRoute.authWebview.path,
//           name: AppRoute.authWebview.name,
//           pageBuilder: (context, state) {
//             final record = state.extra! as (
//               Uri authorizationUrl,
//               void Function(Uri redirectUrl) onAuthorizationCodeRedirectAttempt,
//             );
//             final authorizationUrl = record.$1;
//             final onAuthorizationCodeRedirectAttempt = record.$2;
//             return MaterialPage(
//               key: state.pageKey,
//               child: AuthWebviewPage(
//                 authorizationUrl: authorizationUrl,
//                 onAuthorizationCodeRedirectAttempt:
//                     onAuthorizationCodeRedirectAttempt,
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
