// [ QUOTATION, INVOICE ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum SerialNumberTypeDto {
  quotation,
  invoice;
}

extension SerialNumberTypeDtoX on SerialNumberTypeDto {
  SerialNumberType toDomain() => switch (this) {
        SerialNumberTypeDto.quotation => SerialNumberType.quotation,
        SerialNumberTypeDto.invoice => SerialNumberType.invoice,
      };
}
