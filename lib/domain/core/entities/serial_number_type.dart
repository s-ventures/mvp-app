// [ QUOTATION, INVOICE ]

import 'package:manifiesto_mvp_app/infrastructure/core/dtos/serial_number_type_dto.dart';

enum SerialNumberType {
  quotation('quotation'),
  invoice('invoice');

  const SerialNumberType(this.name);
  final String name;
}

extension SerialNumberTypeX on SerialNumberType {
  SerialNumberTypeDto toDto() => switch (this) {
        SerialNumberType.quotation => SerialNumberTypeDto.quotation,
        SerialNumberType.invoice => SerialNumberTypeDto.invoice,
      };
}
