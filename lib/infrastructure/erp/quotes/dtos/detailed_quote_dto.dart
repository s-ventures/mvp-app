import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/detailed_quote.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/serial_number_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quote_item_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quote_status_dto.dart';

part 'detailed_quote_dto.freezed.dart';
part 'detailed_quote_dto.g.dart';

@freezed
class DetailedQuoteDto with _$DetailedQuoteDto {
  const factory DetailedQuoteDto({
    required int quotationId,
    required int erpContractId,
    required String number,
    required int stakeholderId,
    @DateConverter() required DateTime dueDate,
    @DateConverter() required DateTime createdDate,
    required String currencyCode,
    required double withHoldingTaxesPercentage,
    required int fileId,
    required String additionalInfo,
    @DateConverter() required DateTime statusDate,
    required List<QuoteItemDto> items,
    required SerialNumberDto serialNumber,
    required int stakeholderAddressId,
    required int stakeholderTelephoneId,
    required int stakeholderEmailId,
    @DateConverter() required DateTime issueDate,
    required QuoteStatusDto status,
    required int serialNumberId,
    required List<FileAttachmentDto> attachments,
    // TODO(jesus): change when we have the dto from the backend
    required dynamic subtotalVatAmount,
  }) = _DetailedQuoteDto;

  factory DetailedQuoteDto.fromJson(Map<String, dynamic> json) => _$DetailedQuoteDtoFromJson(json);
}

extension DetailedQuoteDtoX on DetailedQuoteDto {
  DetailedQuote toDomain() {
    return DetailedQuote(
      id: UniqueId.fromUniqueString(quotationId.toString()),
      contractId: UniqueId.fromUniqueString(erpContractId.toString()),
      number: number,
      stakeholderId: UniqueId.fromUniqueString(stakeholderId.toString()),
      dueDate: dueDate,
      createdDate: createdDate,
      currencyCode: currencyCode,
      withHoldingTaxesPercentage: withHoldingTaxesPercentage,
      fileId: UniqueId.fromUniqueString(fileId.toString()),
      additionalInfo: additionalInfo,
      statusDate: statusDate,
      items: items.map((e) => e.toDomain()).toList(),
      serialNumber: serialNumber.toDomain(),
      stakeholderAddressId: UniqueId.fromUniqueString(stakeholderAddressId.toString()),
      stakeholderTelephoneId: UniqueId.fromUniqueString(stakeholderTelephoneId.toString()),
      stakeholderEmailId: UniqueId.fromUniqueString(stakeholderEmailId.toString()),
      issueDate: issueDate,
      status: status.toDomain(),
      serialNumberId: UniqueId.fromUniqueString(serialNumberId.toString()),
      attachments: attachments.map((e) => e.toDomain()).toList(),
      subtotalVatAmount: subtotalVatAmount,
    );
  }
}
