import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transaction_operation_type_dto.dart';

enum TransactionOperationType {
  all('Todos'),
  credit('Ingresos'),
  debit('Gastos');

  const TransactionOperationType(this.name);

  final String name;
}

extension OperationTypeX on TransactionOperationType {
  TransactionOperationTypeDto toDto(double? amountFrom, double? amountTo) =>
      switch (this) {
        TransactionOperationType.all => amountFrom != null || amountTo != null
            ? TransactionOperationTypeDto.creditDebit
            : TransactionOperationTypeDto.timeline,
        TransactionOperationType.credit => TransactionOperationTypeDto.credit,
        TransactionOperationType.debit => TransactionOperationTypeDto.debit,
      };
}
