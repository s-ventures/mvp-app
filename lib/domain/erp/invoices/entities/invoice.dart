import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';

part 'invoice.freezed.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required UniqueId id,
    required UniqueId erpContractId,
    required String number,
    required double totalAmount,
    required DateTime? dueDate,
    required DateTime createdDate,
    required DateTime? sentDate,
    required DateTime? statusDate,
    required String fullName,
    required InvoiceStatus status,
    required DocumentTypeCode documentTypeCode,
    required String documentNumber,
  }) = _Invoice;
}
