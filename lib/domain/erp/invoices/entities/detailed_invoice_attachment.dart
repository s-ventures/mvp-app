import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'detailed_invoice_attachment.freezed.dart';

@freezed
class DetailedInvoiceAttachment with _$DetailedInvoiceAttachment {
  const factory DetailedInvoiceAttachment({
    required UniqueId invoiceAttachmentId,
    required UniqueId invoiceId,
    required UniqueId fileId,
  }) = _DetailedInvoiceAttachment;
}
