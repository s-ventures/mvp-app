import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_attachment_dto.freezed.dart';
part 'transaction_attachment_dto.g.dart';

@freezed
class TransactionAttachmentDto with _$TransactionAttachmentDto {
  const factory TransactionAttachmentDto({
    required int transactionAttachmentId,
    required int movementId,
    required int fileId,
  }) = _TransactionAttachmentDto;

  factory TransactionAttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionAttachmentDtoFromJson(json);
}
