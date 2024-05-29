import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'expenses_attachment.freezed.dart';

@freezed
class ExpensesAttachment with _$ExpensesAttachment {
  const factory ExpensesAttachment({
    required UniqueId expenseAttachmentId,
    required UniqueId expenseId,
    required UniqueId fileId,
  }) = _ExpensesAttachment;
}
