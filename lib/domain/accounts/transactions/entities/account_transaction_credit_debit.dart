import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transaction_credit_debit_dto.dart';

enum AccountTransactionCreditDebit {
  all('Todos'),
  credit('Ingresos'),
  debit('Gastos');

  const AccountTransactionCreditDebit(this.name);

  final String name;
}

extension AccountTransactionCreditDebitDtoX on AccountTransactionCreditDebit? {
  AccountTransactionCreditDebitDto? toDto() => switch (this) {
        AccountTransactionCreditDebit.all =>
          AccountTransactionCreditDebitDto.all,
        AccountTransactionCreditDebit.credit =>
          AccountTransactionCreditDebitDto.credit,
        AccountTransactionCreditDebit.debit =>
          AccountTransactionCreditDebitDto.debit,
        null => null,
      };
}
