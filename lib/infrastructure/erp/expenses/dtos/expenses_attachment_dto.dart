import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_attachment.dart';

part 'expenses_attachment_dto.freezed.dart';
part 'expenses_attachment_dto.g.dart';

@freezed
class ExpensesAttachmentDto with _$ExpensesAttachmentDto {
  const factory ExpensesAttachmentDto({
    required int expenseAttachmentId,
    required int expenseId,
    required int fileId,
  }) = _ExpensesAttachmentDto;

  factory ExpensesAttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$ExpensesAttachmentDtoFromJson(json);
}

extension ExpensesAttachmentDtoX on ExpensesAttachmentDto {
  ExpensesAttachment toDomain() {
    return ExpensesAttachment(
      expenseAttachmentId: UniqueId.fromUniqueString(expenseAttachmentId.toString()),
      expenseId: UniqueId.fromUniqueString(expenseId.toString()),
      fileId: UniqueId.fromUniqueString(fileId.toString()),
    );
  }
}
