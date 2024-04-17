import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/analitica/analitica_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/add/add_money_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/details/account_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/list/account_list_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/account_transaction_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/search_account_transactions_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/taxes/taxes_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/received/transfer_received_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/details/sent/transfer_sent_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/international_transfers/international_transfer_certificate/international_transfer_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/international_transfers/international_transfer_resume/international_transfer_resume_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/international_transfers/international_transfer_signature/international_transfer_signature_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/international_transfers/international_transfers_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/national_transfers/national_transfer_certificate/national_transfer_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/national_transfers/national_transfer_resume/national_transfer_resume_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/national_transfers/national_transfer_signature/national_transfer_signature_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/national_transfers/national_transfers_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/scheduled_transfers/scheduled_transfer_details/scheduled_transfer_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/scheduled_transfers/scheduled_transfer_edit/scheduled_transfer_edit_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/scheduled_transfers/scheduled_transfer_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/scheduled_transfers/scheduled_transfer_signature/scheduled_transfer_signature_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/soon_pay/soon_pay_contact/soon_pay_contact.page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/soon_pay/soon_pay_otp/soon_pay_otp_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/soon_pay/soon_pay_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transfers/transfers_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/search/search_cards_transactions_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/settings/card_settings_alias/card_settings_alias_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/settings/card_settings_limits/card_settings_limits_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/settings/card_settings_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/details/card_transaction_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/certificates/certificates_and_documents_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/certificates/download/download_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/certificates/otp/otp_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/certificates/payment/payment_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/certificates/request/request_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/daily_banking_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/claims_list/claims_list_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/insurance_policy_details/claim_details_page/insurance_claim_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/insurance_policy_details/insurance_policy_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/policies_list/policies_list_page.dart';
import 'package:manifiesto_mvp_app/presentation/erp/erp_page.dart';
import 'package:manifiesto_mvp_app/presentation/protecccion/proteccion_page.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:manifiesto_mvp_app/presentation/routing/widgets/scaffold_with_bottom_nav_bar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  // final authRouter = AuthRouter.build();

  return GoRouter(
    initialLocation: AppRoute.dailyBanking.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      // // Auth
      // authRouter,

      // Shell Route
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          // DAILY BANKING
          GoRoute(
            path: AppRoute.dailyBanking.path,
            name: AppRoute.dailyBanking.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const DailyBankingPage(),
            ),
            routes: [
              //
              // ACCOUNTS
              // Add money
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingAddMoney.path,
                name: AppRoute.dailyBankingAddMoney.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const AddMoneyPage(),
                ),
              ),
              // Send money
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingTransfers.path,
                name: AppRoute.dailyBankingTransfers.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const TransfersPage(),
                ),
                routes: [
                  // National bank transfers
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingNationalTransfers.path,
                    name: AppRoute.dailyBankingNationalTransfers.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const NationalTransfersPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.dailyBankingNationalTransferResume.path,
                        name: AppRoute.dailyBankingNationalTransferResume.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const NationalTransferResumePage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.dailyBankingNationalTransferSignature.path,
                            name: AppRoute.dailyBankingNationalTransferSignature.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const NationalTransferSignaturePage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute.dailyBankingNationalTransferCertificate.path,
                                name: AppRoute.dailyBankingNationalTransferCertificate.name,
                                pageBuilder: (context, state) => MaterialPage(
                                  key: state.pageKey,
                                  child: const NationalTransferCertificatePage(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  // International bank transfers
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingInternationalTransfers.path,
                    name: AppRoute.dailyBankingInternationalTransfers.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const InternationalTransfersPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.dailyBankingInternationalTransferResume.path,
                        name: AppRoute.dailyBankingInternationalTransferResume.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const InternationalTransferResumePage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.dailyBankingInternationalTransferSignature.path,
                            name: AppRoute.dailyBankingInternationalTransferSignature.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const InternationalTransferSignaturePage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute.dailyBankingInternationalTransferCertificate.path,
                                name: AppRoute.dailyBankingInternationalTransferCertificate.name,
                                pageBuilder: (context, state) => MaterialPage(
                                  key: state.pageKey,
                                  child: const InternationalTransferCertificatePage(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Scheduled transfers
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingScheduledTransfers.path,
                    name: AppRoute.dailyBankingScheduledTransfers.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const ScheduledTransfersPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.dailyBankingScheduledTransferDetails.path,
                        name: AppRoute.dailyBankingScheduledTransferDetails.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const ScheduledTransferDetailsPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.dailyBankingScheduledTransferEdit.path,
                            name: AppRoute.dailyBankingScheduledTransferEdit.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const ScheduledTransferEditPage(),
                            ),
                          ),
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.dailyBankingScheduledTransferSignature.path,
                            name: AppRoute.dailyBankingScheduledTransferSignature.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const ScheduledTransferSignaturePage(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Soon pay
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingSoonPay.path,
                    name: AppRoute.dailyBankingSoonPay.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const SoonPayPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.dailyBankingSoonPayContact.path,
                        name: AppRoute.dailyBankingSoonPayContact.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const SoonPayContactPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.dailyBankingSoonPayOTP.path,
                            name: AppRoute.dailyBankingSoonPayOTP.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const SoonPayOTPPage(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingTransfersSentDetails.path,
                    name: AppRoute.dailyBankingTransfersSentDetails.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const TransferSentDetailsPage(),
                    ),
                  ),

                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingTransfersReceivedDetails.path,
                    name: AppRoute.dailyBankingTransfersReceivedDetails.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const TransferReceivedDetailsPage(),
                    ),
                  ),
                ],
              ),

              // Account list
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingAggregatedAccounts.path,
                name: AppRoute.dailyBankingAggregatedAccounts.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const AccountListPage(),
                ),
              ),

              // Account details
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingAccountDetails.path,
                name: AppRoute.dailyBankingAccountDetails.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: AccountDetailsPage(
                    accountId: state.pathParameters['accountId']!,
                  ),
                ),
              ),

              // Transaction details
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingAccountTransactionDetails.path,
                name: AppRoute.dailyBankingAccountTransactionDetails.name,
                pageBuilder: (context, state) {
                  final transactionId = state.pathParameters['transactionId']!;
                  final accountId = state.pathParameters['accountId']!;

                  return MaterialPage(
                    key: state.pageKey,
                    child: AccountTransactionDetailsPage(
                      transactionId: transactionId,
                      accountId: accountId,
                    ),
                  );
                },
              ),

              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingAccountTaxesDetails.path,
                name: AppRoute.dailyBankingAccountTaxesDetails.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const TaxesDetailsPage(),
                ),
              ),

              // Search account transactions
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingSearchAccountTransactions.path,
                name: AppRoute.dailyBankingSearchAccountTransactions.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const SearchAccountTransactionsPage(),
                ),
              ),

              // Search card transactions
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingSearchCardTransactions.path,
                name: AppRoute.dailyBankingSearchCardTransactions.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const SearchCardTransactionsPage(),
                ),
              ),

              //
              // CARDS
              // Card settings
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingCardSettings.path,
                name: AppRoute.dailyBankingCardSettings.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const CardSettingsPage(),
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingCardSettingsLimits.path,
                    name: AppRoute.dailyBankingCardSettingsLimits.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const CardSettingsLimitsPage(),
                    ),
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingCardSettingsAlias.path,
                    name: AppRoute.dailyBankingCardSettingsAlias.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const CardSettingsAliasPage(),
                    ),
                  ),
                ],
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingCardTransactionDetails.path,
                name: AppRoute.dailyBankingCardTransactionDetails.name,
                pageBuilder: (context, state) {
                  final cardContractId = state.pathParameters['cardContractId']!;
                  final transactionId = state.pathParameters['transactionId']!;

                  return MaterialPage(
                    key: state.pageKey,
                    child: CardTransactionDetailsPage(
                      cardContractId: cardContractId,
                      transactionId: transactionId,
                    ),
                  );
                },
              ),

              //
              // INSURANCES
              // ...
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingInsurancePoliciesList.path,
                name: AppRoute.dailyBankingInsurancePoliciesList.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const InsurancePoliciesListPage(),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingInsuranceClaimsList.path,
                name: AppRoute.dailyBankingInsuranceClaimsList.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const InsuranceClaimsListPage(),
                ),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingInsuranceDetails.path,
                name: AppRoute.dailyBankingInsuranceDetails.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const InsurancePolicyDetailsPage(),
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingInsuranceClaimDetails.path,
                    name: AppRoute.dailyBankingInsuranceClaimDetails.name,
                    pageBuilder: (context, state) {
                      final args =
                          state.extra! as InsuranceClaimDetailsRouteArgs;
                      return MaterialPage(
                        key: state.pageKey,
                        child: InsuranceClaimDetailsPage(
                          claimId: args.claimId,
                          insuranceId: args.insuranceId,
                        ),
                      );
                    },
                  ),
                ],
              ),

              // Certificates and documents
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: AppRoute.dailyBankingCertsAndDocuments.path,
                name: AppRoute.dailyBankingCertsAndDocuments.name,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const CertificatesAndDocumentsPage(),
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.dailyBankingCertsAndDocumentsRequest.path,
                    name: AppRoute.dailyBankingCertsAndDocumentsRequest.name,
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const CertificatesAndDocumentsRequestPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.dailyBankingCertsAndDocumentsRequestPayment.path,
                        name: AppRoute.dailyBankingCertsAndDocumentsRequestPayment.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const CertificatesAndDocumentsRequestPaymentPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.dailyBankingCertsAndDocumentsRequestPaymentOTP.path,
                            name: AppRoute.dailyBankingCertsAndDocumentsRequestPaymentOTP.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const CertificatesAndDocumentsRequestPaymentOTPPage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute.dailyBankingCertsAndDocumentsRequestDownload.path,
                                name: AppRoute.dailyBankingCertsAndDocumentsRequestDownload.name,
                                pageBuilder: (context, state) => MaterialPage(
                                  key: state.pageKey,
                                  child: const CertificatesAndDocumentsDownload(),
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

class InsuranceClaimDetailsRouteArgs {
  const InsuranceClaimDetailsRouteArgs({
    required this.claimId,
    required this.insuranceId,
  });

  final int claimId;
  final int insuranceId;
}
