import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quote_item.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quote_status.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_quote.freezed.dart';

@freezed
class DetailedQuote with _$DetailedQuote {
  const factory DetailedQuote({
    required UniqueId id,
    required UniqueId contractId,
    required String number,
    required UniqueId stakeholderId,
    required DateTime dueDate,
    required DateTime createdDate,
    required String currencyCode,
    required double withHoldingTaxesPercentage,
    required UniqueId fileId,
    required String additionalInfo,
    required DateTime statusDate,
    required List<QuoteItem> items,
    required SerialNumber serialNumber,
    required UniqueId stakeholderAddressId,
    required UniqueId stakeholderTelephoneId,
    required UniqueId stakeholderEmailId,
    required DateTime issueDate,
    required QuoteStatus status,
    required UniqueId serialNumberId,
    required List<FileAttachment> attachments,
    // TODO(jesus): change when we have the dto from the backend
    required dynamic subtotalVatAmount,
  }) = _DetailedQuote;
}
