import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum TransactionOperationTypeDto {
  timeline,
  credit,
  debit,
  creditDebit,
}

extension OperationTypeDtoX on TransactionOperationTypeDto {
  TransactionOperationType toDomain() => switch (this) {
        TransactionOperationTypeDto.credit => TransactionOperationType.credit,
        TransactionOperationTypeDto.debit => TransactionOperationType.debit,
        TransactionOperationTypeDto.timeline ||
        TransactionOperationTypeDto.creditDebit =>
          TransactionOperationType.all,
      };
}
