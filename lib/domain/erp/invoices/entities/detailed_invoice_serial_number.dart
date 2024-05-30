import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_serial_number_type.dart';

part 'detailed_invoice_serial_number.freezed.dart';

@freezed
class DetailedInvoiceSerialNumber with _$DetailedInvoiceSerialNumber {
  const factory DetailedInvoiceSerialNumber({
    required UniqueId serialNumberId,
    required UniqueId erpContractId,
    required String alias,
    required String description,
    required int numberLast,
    required String format,
    required UniqueId templateId,
    required DetailedInvoiceSerialNumberType type,
  }) = _DetailedInvoiceSerialNumber;
}
