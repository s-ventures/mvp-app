enum AppRoute {
  auth('/auth'),
  authWebview('auth-webview'),
  dailyBanking('/daily-banking'),
  dailyBankingAccountDetails('account/:accountId'),
  dailyBankingSearchAccountTransactions('search-account-transactions'),
  dailyBankingAccountTransactionDetails(':accountId/transaction/:transactionId'),
  dailyBankingCardSettings('card-settings'),
  dailyBankingSearchCardTransactions('search-card-transactions'),
  dailyBankingCardSettingsLimits('limits'),
  dailyBankingCardSettingsAlias('alias'),
  dailyBankingCardTransactionDetails('cards/:cardContractId/transaction/:transactionId'),
  dailyBankingAggregatedAccounts('aggregated-accounts'),
  dailyBankingInsurancePoliciesList('policies-list'),
  dailyBankingInsuranceClaimsList('claims-list'),
  dailyBankingInsuranceDetails('insurance-details'),
  dailyBankingInsuranceClaimDetails('claims-details'),
  dailyBankingTransfers('transfers'),
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
  negocio('/negocio'),
  agenda('/agenda'),
  analitica('/analitica'),
  proteccion('/proteccion');

  const AppRoute(this.path);

  final String path;
}
