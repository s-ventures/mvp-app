import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_status_dto.dart';

// {
//       "erpContractId": 1052,
//       "number": "2023/00000055",
//       "stakeholderId": 50,
//       "dueDate": "2023-12-15",
//       "createdDate": "2023-12-15",
//       "totalAmount": 26.676,
//       "currencyCode": "EUR",
//       "withholdingTaxesPercentage": null,
//       "fileId": 292,
//       "additionalInfo": "string",
//       "statusDate": null,
//       "withHoldingTaxesAmount": 17.5,
//       "totalWithoutTaxes": 350,
//       "quotationId": 8,
//       "stakeholderAddressId": 0,
//       "stakeholderTelephoneId": 30,
//       "stakeholderEmailId": 1,
//       "sentDate": null,
//       "status": "DRAFT",
//       "serialNumberId": null
//     }

part 'quotation_dto.freezed.dart';
part 'quotation_dto.g.dart';

@freezed
class QuotationDto with _$QuotationDto {
  const factory QuotationDto({
    required int erpContractId,
    required String number,
    required int stakeholderId,
    required DateTime? dueDate,
    required DateTime createdDate,
    required double totalAmount,
    required String? currencyCode,
    required double? withholdingTaxesPercentage,
    required int? fileId,
    required String? additionalInfo,
    required DateTime? statusDate,
    required double? withHoldingTaxesAmount,
    required double? totalWithoutTaxes,
    required int quotationId,
    required int? stakeholderAddressId,
    required int? stakeholderTelephoneId,
    required int? stakeholderEmailId,
    required DateTime? sentDate,
    required QuotationStatusDto status,
    required int? serialNumberId,
  }) = _QuotationDto;

  factory QuotationDto.fromJson(Map<String, dynamic> json) => _$QuotationDtoFromJson(json);
}

extension QuotationDtoX on QuotationDto {
  Quotation toDomain() {
    return Quotation(
      id: UniqueId.fromUniqueString(quotationId.toString()),
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      number: number,
      totalAmount: totalAmount,
      dueDate: dueDate,
      createdDate: createdDate,
      sentDate: sentDate,
      statusDate: statusDate,
      status: status.toDomain(),
    );
  }
}
