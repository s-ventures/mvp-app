import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
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
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/calculate_price_capital_inventories_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/calculate_price_risk_characteristics_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/commerce_contract_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/payment/commerce_contract_payment_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/payment/otp/commerce_contract_payment_otp_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/contract/payment/otp/contracted/commerce_contracted_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/data_validation_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/calculate_price/capital_price_risk_characteristics/data_validation/edit/data_validation_edit_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/commerce/commerce_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/cybersecurity/cybersecurity_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/health/health_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/insurances/responsibility/responsibility_insurance_page.dart';
import 'package:manifiesto_mvp_app/presentation/protection/protection_page.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';

class ProtectionRouter {
  static GoRoute build(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      path: AppRoute.protection.path,
      name: AppRoute.protection.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const ProtectionPage(),
      ),
      routes: [
        // Improve protection
        GoRoute(
          path: AppRoute.protectionImprove.path,
          name: AppRoute.protectionImprove.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ImproveProtectionPage(),
          ),
        ),

        // Contracted products
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.protectionContractedProducts.path,
          name: AppRoute.protectionContractedProducts.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ContractedProductsPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.protectionContractedProductsPolicyDetails.path,
              name: AppRoute.protectionContractedProductsPolicyDetails.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const ContractedProductsPolicyDetails(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
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
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.protectionContractedProductsAddNew.path,
              name: AppRoute.protectionContractedProductsAddNew.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const ContractedProductsAddProductPage(),
              ),
            ),
          ],
        ),

        // Insurances [Accidents]
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.protectionInsuranceAccident.path,
          name: AppRoute.protectionInsuranceAccident.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const AccidentsInsurancePage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.protectionInsuranceAccidentCalculatePriceFirstStep.path,
              name: AppRoute.protectionInsuranceAccidentCalculatePriceFirstStep.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const AccidentsInsuranceCalculatePriceFirstPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: AppRoute.protectionInsuranceAccidentCalculatePriceSecondStep.path,
                  name: AppRoute.protectionInsuranceAccidentCalculatePriceSecondStep.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const AccidentsInsuranceCalculatePriceSecondPage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: AppRoute.protectionInsuranceAccidentCalculatePriceThirdStep.path,
                      name: AppRoute.protectionInsuranceAccidentCalculatePriceThirdStep.name,
                      pageBuilder: (context, state) => NoTransitionPage(
                        key: state.pageKey,
                        child: const AccidentsInsuranceCalculatePriceThirdPage(),
                      ),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: AppRoute.protectionInsuranceAccidentCalculatePriceFourthStep.path,
                          name: AppRoute.protectionInsuranceAccidentCalculatePriceFourthStep.name,
                          pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            child: const AccidentsInsuranceCalculatePriceFourthPage(),
                          ),
                          routes: [
                            GoRoute(
                              parentNavigatorKey: rootNavigatorKey,
                              path: AppRoute
                                  .protectionInsuranceAccidentCalculatePriceDataValidation.path,
                              name: AppRoute
                                  .protectionInsuranceAccidentCalculatePriceDataValidation.name,
                              pageBuilder: (context, state) => NoTransitionPage(
                                key: state.pageKey,
                                child: const AccidentsInsuranceDataValidationPage(),
                              ),
                              routes: [
                                GoRoute(
                                  parentNavigatorKey: rootNavigatorKey,
                                  path: AppRoute
                                      .protectionInsuranceAccidentCalculatePriceDataValidationEdit
                                      .path,
                                  name: AppRoute
                                      .protectionInsuranceAccidentCalculatePriceDataValidationEdit
                                      .name,
                                  pageBuilder: (context, state) => NoTransitionPage(
                                    key: state.pageKey,
                                    child: const AccidentsInsuranceDataValidationEditPage(),
                                  ),
                                ),
                                GoRoute(
                                  parentNavigatorKey: rootNavigatorKey,
                                  path: AppRoute.protectionInsuranceAccidentContract.path,
                                  name: AppRoute.protectionInsuranceAccidentContract.name,
                                  pageBuilder: (context, state) => NoTransitionPage(
                                    key: state.pageKey,
                                    child: const AccidentsInsuranceContractPage(),
                                  ),
                                  routes: [
                                    GoRoute(
                                      parentNavigatorKey: rootNavigatorKey,
                                      path:
                                          AppRoute.protectionInsuranceAccidentContractPayment.path,
                                      name:
                                          AppRoute.protectionInsuranceAccidentContractPayment.name,
                                      pageBuilder: (context, state) => NoTransitionPage(
                                        key: state.pageKey,
                                        child: const AccidentsInsurancePaymentPage(),
                                      ),
                                      routes: [
                                        GoRoute(
                                          parentNavigatorKey: rootNavigatorKey,
                                          path: AppRoute
                                              .protectionInsuranceAccidentContractPaymentOtp.path,
                                          name: AppRoute
                                              .protectionInsuranceAccidentContractPaymentOtp.name,
                                          pageBuilder: (context, state) => NoTransitionPage(
                                            key: state.pageKey,
                                            child: const AccidentsInsurancePaymentOtpPage(),
                                          ),
                                          routes: [
                                            GoRoute(
                                              parentNavigatorKey: rootNavigatorKey,
                                              path: AppRoute
                                                  .protectionInsuranceAccidentContracted.path,
                                              name: AppRoute
                                                  .protectionInsuranceAccidentContracted.name,
                                              pageBuilder: (context, state) => NoTransitionPage(
                                                key: state.pageKey,
                                                child: const AccidentsInsuranceContractedPage(),
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

        // Insurances [Commerce]
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.protectionInsuranceCommerce.path,
          name: AppRoute.protectionInsuranceCommerce.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const CommerceInsurancePage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.protectionInsuranceCommerceCalculatePriceFirstStep.path,
              name: AppRoute.protectionInsuranceCommerceCalculatePriceFirstStep.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const CommerceInsuranceCalculatePriceFirstStepPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: AppRoute.protectionInsuranceCommerceCalculatePriceSecondStep.path,
                  name: AppRoute.protectionInsuranceCommerceCalculatePriceSecondStep.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const CommerceInsuranceCalculatePriceSecondStepPage(),
                  ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: AppRoute.protectionInsuranceCommerceCalculatePriceDataValidation.path,
                      name: AppRoute.protectionInsuranceCommerceCalculatePriceDataValidation.name,
                      pageBuilder: (context, state) => NoTransitionPage(
                        key: state.pageKey,
                        child: const CommerceInsuranceCalculatePriceDataValidationPage(),
                      ),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: AppRoute
                              .protectionInsuranceCommerceCalculatePriceDataValidationEdit.path,
                          name: AppRoute
                              .protectionInsuranceCommerceCalculatePriceDataValidationEdit.name,
                          pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            child: const CommerceInsuranceCalculatePriceDataValidationEditPage(),
                          ),
                        ),
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: AppRoute.protectionInsuranceCommerceContract.path,
                          name: AppRoute.protectionInsuranceCommerceContract.name,
                          pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            child: const InsuranceCommerceContractPage(),
                          ),
                          routes: [
                            GoRoute(
                              parentNavigatorKey: rootNavigatorKey,
                              path: AppRoute.protectionInsuranceCommerceContractPayment.path,
                              name: AppRoute.protectionInsuranceCommerceContractPayment.name,
                              pageBuilder: (context, state) => NoTransitionPage(
                                key: state.pageKey,
                                child: const InsuranceCommerceContractPaymentPage(),
                              ),
                              routes: [
                                GoRoute(
                                  parentNavigatorKey: rootNavigatorKey,
                                  path: AppRoute.protectionInsuranceCommerceContractPaymentOtp.path,
                                  name: AppRoute.protectionInsuranceCommerceContractPaymentOtp.name,
                                  pageBuilder: (context, state) => NoTransitionPage(
                                    key: state.pageKey,
                                    child: const InsuranceCommerceContractPaymentOtpPage(),
                                  ),
                                  routes: [
                                    GoRoute(
                                      parentNavigatorKey: rootNavigatorKey,
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

        // Insurances [Cybersecurity]
        GoRoute(
          path: AppRoute.protectionInsuranceCybersecurity.path,
          name: AppRoute.protectionInsuranceCybersecurity.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const CybersecurityInsurancePage(),
          ),
        ),

        // Insurances [Health]
        GoRoute(
          path: AppRoute.protectionInsuranceHealth.path,
          name: AppRoute.protectionInsuranceHealth.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HealthInsurancePage(),
          ),
        ),

        // Insurances [Responsibility]
        GoRoute(
          path: AppRoute.protectionInsuranceResponsibility.path,
          name: AppRoute.protectionInsuranceResponsibility.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ResponsibilityInsurancePage(),
          ),
        ),
      ],
    );
  }
}
