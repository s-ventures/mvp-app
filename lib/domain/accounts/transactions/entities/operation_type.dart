import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/operation_type_dto.dart';

enum OperationType {
  all('Todos'),
  credit('Ingresos'),
  debit('Gastos');

  const OperationType(this.name);

  final String name;
}

extension OperationTypeX on OperationType {
  OperationTypeDto toDto(double? amountFrom, double? amountTo) =>
      switch (this) {
        OperationType.all => amountFrom != null || amountTo != null
            ? OperationTypeDto.creditDebit
            : OperationTypeDto.timeline,
        OperationType.credit => OperationTypeDto.credit,
        OperationType.debit => OperationTypeDto.debit,
      };
}
