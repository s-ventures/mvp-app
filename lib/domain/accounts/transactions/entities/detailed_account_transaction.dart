import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_account_transaction.freezed.dart';

@freezed
class DetailedAccountTransaction with _$DetailedAccountTransaction {
  const factory DetailedAccountTransaction({
    required UniqueId id,
    required String description,
    required double amount,
    // TODO: Hacer non-nullable, el back-end está enviando null
    required double? endBalance,
    required DateTime date,
    // TODO: Hacer non-nullable, el back-end está enviando null
    required String? originBranch,
    required String category,
    required String detailFields,
    required String userComments,
    required bool? bankReceipt,
    // TODO: Hacer required y non-nullable, el back-end está enviando null
    UniqueId? accountId,
    @Default([]) List<FileAttachment> attachments,
  }) = _DetailedAccountTransaction;
}
