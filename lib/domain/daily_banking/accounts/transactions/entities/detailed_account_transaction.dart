import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_account_transaction.freezed.dart';

@freezed
class DetailedAccountTransaction with _$DetailedAccountTransaction {
  const factory DetailedAccountTransaction({
    required UniqueId id,
    required String description,
    required double amount,
    required double endBalance,
    required DateTime postingDate,
    required DateTime valueDate,
    required String originBranch,
    required String category,
    required String detailFields,
    required String userComments,
    required bool? bankReceipt,
    required ExtendedTransactionDetails? details,
    required UniqueId accountId,
    @Default([]) required List<FileAttachment> attachments,
  }) = _DetailedAccountTransaction;
}
