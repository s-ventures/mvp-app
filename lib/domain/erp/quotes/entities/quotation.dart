import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';

part 'quotation.freezed.dart';

@freezed
class Quotation with _$Quotation {
  const factory Quotation({
    required UniqueId id,
    required UniqueId erpContractId,
    required String number,
    required double totalAmount,
    required DateTime? dueDate,
    required DateTime createdDate,
    required DateTime? sentDate,
    required DateTime? statusDate,
    required String fullName,
    required QuotationStatus status,
    required DocumentTypeCode documentTypeCode,
    required String documentNumber,
  }) = _Quotation;
}
