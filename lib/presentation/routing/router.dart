import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/analitica/analitica_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/from_agenda/from_agenda_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/manual/manual_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/upload_contacts/upload_contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/search/search_contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/erp_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/add_product/add_product_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/contracted_products_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/claims_tab/details/claims_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/policy_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/improve/improve_protection_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/accidents_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/accidents_calculate_price_first_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/accidents_calculate_price_second_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/accidents_calculate_price_third_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/accidents_calculate_price_fourth_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/data_validation/accidents_data_validation_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/data_validation/contract/accidents_contract_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/data_validation/contract/payment/accidents_payment_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/data_validation/contract/payment/otp/accidents_payment_otp_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/data_validation/contract/payment/otp/contracted/accidents_contracted_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/calculate_price/calculate_price_second_page/calculate_price_third_page/calculate_price_fourth_page/data_validation/edit/accidents_data_validation_edit_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/cybersecurity/cybersecurity_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/health/health_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/responsibility/responsibility_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/protection_page.dart';
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
            path: AppRoute.contacts.path,
            name: AppRoute.contacts.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const Contacts(),
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.contactsSearch.path,
                name: AppRoute.contactsSearch.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const SearchContactsPage(),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.contactsNewFromManual.path,
                name: AppRoute.contactsNewFromManual.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const NewContactManualPage(),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.contactsNewFromAgenda.path,
                name: AppRoute.contactsNewFromAgenda.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const NewContactFromAgendaPage(),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.contactsNewFromUpload.path,
                name: AppRoute.contactsNewFromUpload.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const NewContactFromUploadPage(),
                ),
              ),
            ],
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
            path: AppRoute.protection.path,
            name: AppRoute.protection.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProtectionPage(),
            ),
            routes: [
              GoRoute(
                path: AppRoute.protectionImprove.path,
                name: AppRoute.protectionImprove.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const ImproveProtectionPage(),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.protectionContractedProducts.path,
                name: AppRoute.protectionContractedProducts.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const ContractedProductsPage(),
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path:
                        AppRoute.protectionContractedProductsPolicyDetails.path,
                    name:
                        AppRoute.protectionContractedProductsPolicyDetails.name,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const ContractedProductsPolicyDetails(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute
                            .protectionContractedProductsClaimDetails.path,
                        name: AppRoute
                            .protectionContractedProductsClaimDetails.name,
                        pageBuilder: (context, state) {
                          return NoTransitionPage(
                            key: state.pageKey,
                            child: const ClaimsDetailsPage(),
                          );
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.protectionContractedProductsAddNew.path,
                    name: AppRoute.protectionContractedProductsAddNew.name,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const ContractedProductsAddProductPage(),
                    ),
                  ),
                ],
              ),
              GoRoute(
                path: AppRoute.protectionInsuranceAccident.path,
                name: AppRoute.protectionInsuranceAccident.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const AccidentsInsurancePage(),
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute
                        .protectionInsuranceAccidentCalculatePriceFirstStep
                        .path,
                    name: AppRoute
                        .protectionInsuranceAccidentCalculatePriceFirstStep
                        .name,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const AccidentsInsuranceCalculatePriceFirstPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute
                            .protectionInsuranceAccidentCalculatePriceSecondStep
                            .path,
                        name: AppRoute
                            .protectionInsuranceAccidentCalculatePriceSecondStep
                            .name,
                        pageBuilder: (context, state) => NoTransitionPage(
                          key: state.pageKey,
                          child:
                              const AccidentsInsuranceCalculatePriceSecondPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute
                                .protectionInsuranceAccidentCalculatePriceThirdStep
                                .path,
                            name: AppRoute
                                .protectionInsuranceAccidentCalculatePriceThirdStep
                                .name,
                            pageBuilder: (context, state) => NoTransitionPage(
                              key: state.pageKey,
                              child:
                                  const AccidentsInsuranceCalculatePriceThirdPage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute
                                    .protectionInsuranceAccidentCalculatePriceFourthStep
                                    .path,
                                name: AppRoute
                                    .protectionInsuranceAccidentCalculatePriceFourthStep
                                    .name,
                                pageBuilder: (context, state) =>
                                    NoTransitionPage(
                                  key: state.pageKey,
                                  child:
                                      const AccidentsInsuranceCalculatePriceFourthPage(),
                                ),
                                routes: [
                                  GoRoute(
                                    parentNavigatorKey: _rootNavigatorKey,
                                    path: AppRoute
                                        .protectionInsuranceAccidentCalculatePriceDataValidation
                                        .path,
                                    name: AppRoute
                                        .protectionInsuranceAccidentCalculatePriceDataValidation
                                        .name,
                                    pageBuilder: (context, state) =>
                                        NoTransitionPage(
                                      key: state.pageKey,
                                      child:
                                          const AccidentsInsuranceDataValidationPage(),
                                    ),
                                    routes: [
                                      GoRoute(
                                        parentNavigatorKey: _rootNavigatorKey,
                                        path: AppRoute
                                            .protectionInsuranceAccidentCalculatePriceDataValidationEdit
                                            .path,
                                        name: AppRoute
                                            .protectionInsuranceAccidentCalculatePriceDataValidationEdit
                                            .name,
                                        pageBuilder: (context, state) =>
                                            NoTransitionPage(
                                          key: state.pageKey,
                                          child:
                                              const AccidentsInsuranceDataValidationEditPage(),
                                        ),
                                      ),
                                      GoRoute(
                                        parentNavigatorKey: _rootNavigatorKey,
                                        path: AppRoute
                                            .protectionInsuranceAccidentContract
                                            .path,
                                        name: AppRoute
                                            .protectionInsuranceAccidentContract
                                            .name,
                                        pageBuilder: (context, state) =>
                                            NoTransitionPage(
                                          key: state.pageKey,
                                          child:
                                              const AccidentsInsuranceContractPage(),
                                        ),
                                        routes: [
                                          GoRoute(
                                            parentNavigatorKey:
                                                _rootNavigatorKey,
                                            path: AppRoute
                                                .protectionInsuranceAccidentContractPayment
                                                .path,
                                            name: AppRoute
                                                .protectionInsuranceAccidentContractPayment
                                                .name,
                                            pageBuilder: (context, state) =>
                                                NoTransitionPage(
                                              key: state.pageKey,
                                              child:
                                                  const AccidentsInsurancePaymentPage(),
                                            ),
                                            routes: [
                                              GoRoute(
                                                parentNavigatorKey:
                                                    _rootNavigatorKey,
                                                path: AppRoute
                                                    .protectionInsuranceAccidentContractPaymentOtp
                                                    .path,
                                                name: AppRoute
                                                    .protectionInsuranceAccidentContractPaymentOtp
                                                    .name,
                                                pageBuilder: (context, state) =>
                                                    NoTransitionPage(
                                                  key: state.pageKey,
                                                  child:
                                                      const AccidentsInsurancePaymentOtpPage(),
                                                ),
                                                routes: [
                                                  GoRoute(
                                                    parentNavigatorKey:
                                                        _rootNavigatorKey,
                                                    path: AppRoute
                                                        .protectionInsuranceAccidentContracted
                                                        .path,
                                                    name: AppRoute
                                                        .protectionInsuranceAccidentContracted
                                                        .name,
                                                    pageBuilder:
                                                        (context, state) =>
                                                            NoTransitionPage(
                                                      key: state.pageKey,
                                                      child:
                                                          const AccidentsInsuranceContractedPage(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: AppRoute.protectionInsuranceCybersecurity.path,
                name: AppRoute.protectionInsuranceCybersecurity.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const CybersecurityInsurancePage(),
                ),
              ),
              GoRoute(
                path: AppRoute.protectionInsuranceHealth.path,
                name: AppRoute.protectionInsuranceHealth.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const HealthInsurancePage(),
                ),
              ),
              GoRoute(
                path: AppRoute.protectionInsuranceResponsibility.path,
                name: AppRoute.protectionInsuranceResponsibility.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const ResponsibilityInsurancePage(),
                ),
              ),
            ],
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
