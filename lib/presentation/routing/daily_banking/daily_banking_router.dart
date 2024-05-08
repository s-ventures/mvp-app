import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/add/add_money_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/details/account_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/list/account_list_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/account_transaction_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/search_account_transactions_page.dart';
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
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/claims/details/insurance_claim_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/claims/list/claims.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/insurance_policy_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/list/policies.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';

class DailyBankingRouter {
  static GoRoute build(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
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
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingAddMoney.path,
          name: AppRoute.dailyBankingAddMoney.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const AddMoneyPage(),
          ),
        ),
        // Send money
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingTransfers.path,
          name: AppRoute.dailyBankingTransfers.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const WiresPage(),
          ),
          routes: [
            // National bank transfers
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingNationalTransfers.path,
              name: AppRoute.dailyBankingNationalTransfers.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const NationalTransfersPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: AppRoute.dailyBankingNationalTransferResume.path,
                  name: AppRoute.dailyBankingNationalTransferResume.name,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const NationalTransferResumePage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: AppRoute.dailyBankingNationalTransferSignature.path,
                      name: AppRoute.dailyBankingNationalTransferSignature.name,
                      pageBuilder: (context, state) => MaterialPage(
                        key: state.pageKey,
                        child: const NationalTransferSignaturePage(),
                      ),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: AppRoute
                              .dailyBankingNationalTransferCertificate.path,
                          name: AppRoute
                              .dailyBankingNationalTransferCertificate.name,
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
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingInternationalTransfers.path,
              name: AppRoute.dailyBankingInternationalTransfers.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const InternationalTransfersPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: AppRoute.dailyBankingInternationalTransferResume.path,
                  name: AppRoute.dailyBankingInternationalTransferResume.name,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const InternationalTransferResumePage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: AppRoute
                          .dailyBankingInternationalTransferSignature.path,
                      name: AppRoute
                          .dailyBankingInternationalTransferSignature.name,
                      pageBuilder: (context, state) => MaterialPage(
                        key: state.pageKey,
                        child: const InternationalTransferSignaturePage(),
                      ),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: AppRoute
                              .dailyBankingInternationalTransferCertificate
                              .path,
                          name: AppRoute
                              .dailyBankingInternationalTransferCertificate
                              .name,
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
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingScheduledTransfers.path,
              name: AppRoute.dailyBankingScheduledTransfers.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const PeriodicOrdersPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: AppRoute.dailyBankingScheduledTransferDetails.path,
                  name: AppRoute.dailyBankingScheduledTransferDetails.name,
                  pageBuilder: (context, state) {
                    final params =
                        state.extra! as PeriodicOrderDetailsRouteParams;
                    return MaterialPage(
                      key: state.pageKey,
                      child: PeriodicOrderDetailsPage(
                        periodicOrderId: params.periodicOrderId,
                      ),
                    );
                  },
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: AppRoute.dailyBankingScheduledTransferEdit.path,
                      name: AppRoute.dailyBankingScheduledTransferEdit.name,
                      pageBuilder: (context, state) {
                        final params =
                            state.extra! as PeriodicOrderDetailsRouteParams;
                        return MaterialPage(
                          key: state.pageKey,
                          child: PeriodicOrderEditPage(
                            periodicOrderId: params.periodicOrderId,
                          ),
                        );
                      },
                    ),
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path:
                          AppRoute.dailyBankingScheduledTransferSignature.path,
                      name:
                          AppRoute.dailyBankingScheduledTransferSignature.name,
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
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingSoonPay.path,
              name: AppRoute.dailyBankingSoonPay.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const SoonPayPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: AppRoute.dailyBankingSoonPayContact.path,
                  name: AppRoute.dailyBankingSoonPayContact.name,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const SoonPayContactPage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
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
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingTransfersSentDetails.path,
              name: AppRoute.dailyBankingTransfersSentDetails.name,
              pageBuilder: (context, state) {
                final params = state.extra! as TransferSentDetailsRouteParams;
                return MaterialPage(
                  key: state.pageKey,
                  child: TransferSentDetailsPage(
                    sentTransferId: params.sentTransferId,
                  ),
                );
              },
            ),

            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
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
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingAggregatedAccounts.path,
          name: AppRoute.dailyBankingAggregatedAccounts.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const AccountListPage(),
          ),
        ),

        // Account details
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
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
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingAccountTransactionDetails.path,
          name: AppRoute.dailyBankingAccountTransactionDetails.name,
          pageBuilder: (context, state) {
            final params = state.extra! as AccountTransactionDetailsRouteParams;

            return MaterialPage(
              key: state.pageKey,
              child: AccountTransactionDetailsPage(
                transactionId: params.transactionId,
                accountId: params.accountId,
                type: params.type,
              ),
            );
          },
        ),
        // Search account transactions
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingSearchAccountTransactions.path,
          name: AppRoute.dailyBankingSearchAccountTransactions.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const SearchAccountTransactionsPage(),
          ),
        ),

        // Search card transactions
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
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
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingCardSettings.path,
          name: AppRoute.dailyBankingCardSettings.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const CardSettingsPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingCardSettingsLimits.path,
              name: AppRoute.dailyBankingCardSettingsLimits.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const CardSettingsLimitsPage(),
              ),
            ),
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
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
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingCardTransactionDetails.path,
          name: AppRoute.dailyBankingCardTransactionDetails.name,
          pageBuilder: (context, state) {
            final params = state.extra! as CardTransactionDetailsRouteParams;

            return MaterialPage(
              key: state.pageKey,
              child: CardTransactionDetailsPage(
                cardContractId: params.cardContractId,
                transactionId: params.transactionId,
              ),
            );
          },
        ),

        //
        // INSURANCES
        // ...
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingInsurancePoliciesList.path,
          name: AppRoute.dailyBankingInsurancePoliciesList.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const Policies(),
          ),
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingInsuranceClaimsList.path,
          name: AppRoute.dailyBankingInsuranceClaimsList.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const Claims(),
          ),
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingInsuranceDetails.path,
          name: AppRoute.dailyBankingInsuranceDetails.name,
          pageBuilder: (context, state) {
            final params = state.extra! as InsurancePolicyDetailsRouteParams;
            return MaterialPage(
              key: state.pageKey,
              child: InsurancePolicyDetailsPage(
                insuranceId: params.insuranceId,
                policyId: params.policyId,
              ),
            );
          },
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingInsuranceClaimDetails.path,
              name: AppRoute.dailyBankingInsuranceClaimDetails.name,
              pageBuilder: (context, state) {
                final params = state.extra! as InsuranceClaimDetailsRouteParams;
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
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.dailyBankingCertsAndDocuments.path,
          name: AppRoute.dailyBankingCertsAndDocuments.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const CertificatesAndDocumentsPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.dailyBankingCertsAndDocumentsRequest.path,
              name: AppRoute.dailyBankingCertsAndDocumentsRequest.name,
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const CertificatesAndDocumentsRequestPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path:
                      AppRoute.dailyBankingCertsAndDocumentsRequestPayment.path,
                  name:
                      AppRoute.dailyBankingCertsAndDocumentsRequestPayment.name,
                  pageBuilder: (context, state) => MaterialPage(
                    key: state.pageKey,
                    child: const CertificatesAndDocumentsRequestPaymentPage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: AppRoute
                          .dailyBankingCertsAndDocumentsRequestPaymentOTP.path,
                      name: AppRoute
                          .dailyBankingCertsAndDocumentsRequestPaymentOTP.name,
                      pageBuilder: (context, state) => MaterialPage(
                        key: state.pageKey,
                        child:
                            const CertificatesAndDocumentsRequestPaymentOTPPage(),
                      ),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: AppRoute
                              .dailyBankingCertsAndDocumentsRequestDownload
                              .path,
                          name: AppRoute
                              .dailyBankingCertsAndDocumentsRequestDownload
                              .name,
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
    );
  }
}
