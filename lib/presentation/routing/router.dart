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
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/details/received/transfer_received_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/details/sent/transfer_sent_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/international_transfers/international_transfer_certificate/international_transfer_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/international_transfers/international_transfer_resume/international_transfer_resume_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/international_transfers/international_transfer_signature/international_transfer_signature_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/international_transfers/international_transfers_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/national_transfers/national_transfer_certificate/national_transfer_certificate_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/national_transfers/national_transfer_resume/national_transfer_resume_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/national_transfers/national_transfer_signature/national_transfer_signature_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/national_transfers/national_transfers_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/periodic_order_details/periodic_order_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/periodic_order_edit/periodic_order_edit_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/periodic_order_signature/periodic_order_signature_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/periodic_orders_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/soon_pay/soon_pay_contact/soon_pay_contact.page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/soon_pay/soon_pay_otp/soon_pay_otp_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/soon_pay/soon_pay_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/wires_page.dart';
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
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/add_product/add_product_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/contracted_products_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/claims_tab/details/claims_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/policy_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/improve/improve_protection_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/accidents/accidents_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/data_validation_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/edit/data_validation_edit_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/calculate_price_capital_inventories_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/calculate_price_risk_characteristics_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/commerce_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/commerce_contract_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/payment/commerce_contract_payment_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/payment/otp/commerce_contract_payment_otp_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/payment/otp/contracted/commerce_contracted_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/cybersecurity/cybersecurity_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/health/health_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/responsibility/responsibility_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/protection_page.dart';
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
                  child: const WiresPage(),
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
                            path: AppRoute
                                .dailyBankingNationalTransferSignature.path,
                            name: AppRoute
                                .dailyBankingNationalTransferSignature.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const NationalTransferSignaturePage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute
                                    .dailyBankingNationalTransferCertificate
                                    .path,
                                name: AppRoute
                                    .dailyBankingNationalTransferCertificate
                                    .name,
                                pageBuilder: (context, state) => MaterialPage(
                                  key: state.pageKey,
                                  child:
                                      const NationalTransferCertificatePage(),
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
                        path: AppRoute
                            .dailyBankingInternationalTransferResume.path,
                        name: AppRoute
                            .dailyBankingInternationalTransferResume.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const InternationalTransferResumePage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute
                                .dailyBankingInternationalTransferSignature
                                .path,
                            name: AppRoute
                                .dailyBankingInternationalTransferSignature
                                .name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const InternationalTransferSignaturePage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute
                                    .dailyBankingInternationalTransferCertificate
                                    .path,
                                name: AppRoute
                                    .dailyBankingInternationalTransferCertificate
                                    .name,
                                pageBuilder: (context, state) => MaterialPage(
                                  key: state.pageKey,
                                  child:
                                      const InternationalTransferCertificatePage(),
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
                      child: const PeriodicOrdersPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path:
                            AppRoute.dailyBankingScheduledTransferDetails.path,
                        name:
                            AppRoute.dailyBankingScheduledTransferDetails.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child: const PeriodicOrderDetailsPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path:
                                AppRoute.dailyBankingScheduledTransferEdit.path,
                            name:
                                AppRoute.dailyBankingScheduledTransferEdit.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const PeriodicOrderEditPage(),
                            ),
                          ),
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute
                                .dailyBankingScheduledTransferSignature.path,
                            name: AppRoute
                                .dailyBankingScheduledTransferSignature.name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child: const PeriodicOrderSignaturePage(),
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
                  final cardContractId =
                      state.pathParameters['cardContractId']!;
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
                      final params =
                          state.extra! as InsuranceClaimDetailsRouteParams;
                      return MaterialPage(
                        key: state.pageKey,
                        child: InsuranceClaimDetailsPage(
                          claimId: params.claimId,
                          insuranceId: params.insuranceId,
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
                        path: AppRoute
                            .dailyBankingCertsAndDocumentsRequestPayment.path,
                        name: AppRoute
                            .dailyBankingCertsAndDocumentsRequestPayment.name,
                        pageBuilder: (context, state) => MaterialPage(
                          key: state.pageKey,
                          child:
                              const CertificatesAndDocumentsRequestPaymentPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute
                                .dailyBankingCertsAndDocumentsRequestPaymentOTP
                                .path,
                            name: AppRoute
                                .dailyBankingCertsAndDocumentsRequestPaymentOTP
                                .name,
                            pageBuilder: (context, state) => MaterialPage(
                              key: state.pageKey,
                              child:
                                  const CertificatesAndDocumentsRequestPaymentOTPPage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute
                                    .dailyBankingCertsAndDocumentsRequestDownload
                                    .path,
                                name: AppRoute
                                    .dailyBankingCertsAndDocumentsRequestDownload
                                    .name,
                                pageBuilder: (context, state) => MaterialPage(
                                  key: state.pageKey,
                                  child:
                                      const CertificatesAndDocumentsDownload(),
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
                    path: AppRoute.protectionContractedProductsPolicyDetails.path,
                    name: AppRoute.protectionContractedProductsPolicyDetails.name,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const ContractedProductsPolicyDetails(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.protectionContractedProductsClaimDetails.path,
                        name: AppRoute.protectionContractedProductsClaimDetails.name,
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
              ),
              GoRoute(
                path: AppRoute.protectionInsuranceCommerce.path,
                name: AppRoute.protectionInsuranceCommerce.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const CommerceInsurancePage(),
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: AppRoute.protectionInsuranceCommerceCalculatePriceFirstStep.path,
                    name: AppRoute.protectionInsuranceCommerceCalculatePriceFirstStep.name,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const CommerceInsuranceCalculatePriceFirstStepPage(),
                    ),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: AppRoute.protectionInsuranceCommerceCalculatePriceSecondStep.path,
                        name: AppRoute.protectionInsuranceCommerceCalculatePriceSecondStep.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                          key: state.pageKey,
                          child: const CommerceInsuranceCalculatePriceSecondStepPage(),
                        ),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: AppRoute.protectionInsuranceCommerceCalculatePriceDataValidation.path,
                            name: AppRoute.protectionInsuranceCommerceCalculatePriceDataValidation.name,
                            pageBuilder: (context, state) => NoTransitionPage(
                              key: state.pageKey,
                              child: const CommerceInsuranceCalculatePriceDataValidationPage(),
                            ),
                            routes: [
                              GoRoute(
                                parentNavigatorKey: _rootNavigatorKey,
                                path: AppRoute.protectionInsuranceCommerceCalculatePriceDataValidationEdit.path,
                                name: AppRoute.protectionInsuranceCommerceCalculatePriceDataValidationEdit.name,
                                pageBuilder: (context, state) => NoTransitionPage(
                                  key: state.pageKey,
                                  child: const CommerceInsuranceCalculatePriceDataValidationEditPage(),
                                ),
                                routes: [
                                  GoRoute(
                                    parentNavigatorKey: _rootNavigatorKey,
                                    path: AppRoute.protectionInsuranceCommerceContract.path,
                                    name: AppRoute.protectionInsuranceCommerceContract.name,
                                    pageBuilder: (context, state) => NoTransitionPage(
                                      key: state.pageKey,
                                      child: const InsuranceCommerceContractPage(),
                                    ),
                                    routes: [
                                      GoRoute(
                                        parentNavigatorKey: _rootNavigatorKey,
                                        path: AppRoute.protectionInsuranceCommerceContractPayment.path,
                                        name: AppRoute.protectionInsuranceCommerceContractPayment.name,
                                        pageBuilder: (context, state) => NoTransitionPage(
                                          key: state.pageKey,
                                          child: const InsuranceCommerceContractPaymentPage(),
                                        ),
                                        routes: [
                                          GoRoute(
                                            parentNavigatorKey: _rootNavigatorKey,
                                            path: AppRoute.protectionInsuranceCommerceContractPaymentOtp.path,
                                            name: AppRoute.protectionInsuranceCommerceContractPaymentOtp.name,
                                            pageBuilder: (context, state) => NoTransitionPage(
                                              key: state.pageKey,
                                              child: const InsuranceCommerceContractPaymentOtpPage(),
                                            ),
                                            routes: [
                                              GoRoute(
                                                parentNavigatorKey: _rootNavigatorKey,
                                                path: AppRoute.protectionInsuranceCommerceContracted.path,
                                                name: AppRoute.protectionInsuranceCommerceContracted.name,
                                                pageBuilder: (context, state) => NoTransitionPage(
                                                  key: state.pageKey,
                                                  child: const InsuranceCommerceContractedPage(),
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
