import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/operation_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum OperationTypeDto {
  timeline,
  credit,
  debit,
  creditDebit,
}

extension OperationTypeDtoX on OperationTypeDto {
  OperationType toDomain() => switch (this) {
        OperationTypeDto.credit => OperationType.credit,
        OperationTypeDto.debit => OperationType.debit,
        OperationTypeDto.timeline ||
        OperationTypeDto.creditDebit =>
          OperationType.all,
      };
}
