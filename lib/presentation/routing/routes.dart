enum AppRoute {
  auth('/auth'),
  authWebview('auth-webview'),
  dailyBanking('/daily-banking'),
  dailyBankingAddMoney('add-money'),
  dailyBankingAccountDetails('account/:accountId'),
  dailyBankingSearchAccountTransactions('search-account-transactions'),
  dailyBankingAccountTransactionDetails(
    ':accountId/transaction/:transactionId',
  ),
  dailyBankingAccountTaxesDetails('tax-details'),
  dailyBankingCardSettings('card-settings'),
  dailyBankingSearchCardTransactions('search-card-transactions'),
  dailyBankingCardSettingsLimits('limits'),
  dailyBankingCardSettingsAlias('alias'),
  dailyBankingCardTransactionDetails(
    'cards/:cardContractId/transaction/:transactionId',
  ),
  dailyBankingAggregatedAccounts('aggregated-accounts'),
  dailyBankingInsurancePoliciesList('policies-list'),
  dailyBankingInsuranceClaimsList('claims-list'),
  dailyBankingInsuranceDetails('insurance-details'),
  dailyBankingInsuranceClaimDetails('claims-details'),
  dailyBankingTransfers('transfers'),
  dailyBankingTransfersSentDetails('transfers-sent-details'),
  dailyBankingTransfersReceivedDetails('transfers-received-details'),
  dailyBankingNationalTransfers('national-transfer'),
  dailyBankingNationalTransferResume('resume'),
  dailyBankingNationalTransferSignature('signature'),
  dailyBankingNationalTransferCertificate('certificate'),
  dailyBankingScheduledTransfers('scheduled-transfers'),
  dailyBankingScheduledTransferDetails('details'),
  dailyBankingScheduledTransferEdit('edit'),
  dailyBankingScheduledTransferSignature('signature'),
  dailyBankingInternationalTransfers('international-transfer'),
  dailyBankingInternationalTransferResume('resume'),
  dailyBankingInternationalTransferSignature('signature'),
  dailyBankingInternationalTransferCertificate('certificate'),
  dailyBankingSoonPay('soon-pay'),
  dailyBankingSoonPayContact('contact'),
  dailyBankingSoonPayOTP('otp'),
  dailyBankingCertsAndDocuments('certs-and-documents'),
  dailyBankingCertsAndDocumentsRequest('request'),
  dailyBankingCertsAndDocumentsRequestPayment('payment'),
  dailyBankingCertsAndDocumentsRequestPaymentOTP('otp'),
  dailyBankingCertsAndDocumentsRequestDownload('download'),
  negocio('/negocio'),
  // Contacts
  contacts('/contacts'),
  contactsSearch('search'),
  contactsNewFromAgenda('new-contact-from-agenda'),
  contactsNewFromUpload('upload-contacts'),
  contactsNewFromUploadDocumentsUploaded('document-list'),
  contactsNewFromManual('new-contact'),
  contactDetails('contact-details'),
  contactEdit('contact-edit'),

  analitica('/analitica'),
  protection('/protection'),
  protectionImprove('improve'),
  protectionContractedProducts('contracted-products'),
  protectionContractedProductsPolicyDetails('policy-details'),
  protectionContractedProductsClaimDetails('claim-details'),
  protectionContractedProductsAddNew('add-new'),
  // Commerce Insurance
  protectionInsuranceCommerce('commercial-insurance'),
  protectionInsuranceCommerceCalculatePriceFirstStep(
    'calculate-price/first-step',
  ),
  protectionInsuranceCommerceCalculatePriceSecondStep('second-step'),
  protectionInsuranceCommerceCalculatePriceDataValidation('data-validation'),
  protectionInsuranceCommerceCalculatePriceDataValidationEdit('edit'),
  protectionInsuranceCommerceContract('contract'),
  protectionInsuranceCommerceContractPayment('payment'),
  protectionInsuranceCommerceContractPaymentOtp('otp'),
  protectionInsuranceCommerceContracted('contracted'),
  // Accidents Insurance
  protectionInsuranceAccident('accident-insurance'),
  protectionInsuranceAccidentCalculatePriceFirstStep('calculate-price'),
  protectionInsuranceAccidentCalculatePriceSecondStep('second-step'),
  protectionInsuranceAccidentCalculatePriceThirdStep('third-step'),
  protectionInsuranceAccidentCalculatePriceFourthStep('fourth-step'),
  protectionInsuranceAccidentCalculatePriceDataValidation('data-validation'),
  protectionInsuranceAccidentCalculatePriceDataValidationEdit('edit'),
  protectionInsuranceAccidentContract('contract'),
  protectionInsuranceAccidentContractPayment('payment'),
  protectionInsuranceAccidentContractPaymentOtp('otp'),
  protectionInsuranceAccidentContracted('contracted'),
  // Cybersecurity Insurance
  protectionInsuranceCybersecurity('cybersecurity-insurance'),
  // Responsibility Insurance
  protectionInsuranceResponsibility('responsibility-insurance'),
  // Health Insurance
  protectionInsuranceHealth('health-insurance'),
  webView('/web-view');

  const AppRoute(this.path);

  final String path;
}
