import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';

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
    // TODO(georgeta): Añadir cuando BFMF añada el campo en el DTO
    // required String stakeholderName,
    required QuotationStatus status,
  }) = _Quotation;
}
