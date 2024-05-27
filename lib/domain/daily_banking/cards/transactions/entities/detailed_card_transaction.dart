import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_card_transaction.freezed.dart';

@freezed
class DetailedCardTransaction extends ExtendedTransactionDetails with _$DetailedCardTransaction {
  const factory DetailedCardTransaction({
    required UniqueId id,
    required double amount,
    required DateTime postingDate,
    required String? description,
    required String? placeId,
    required String merchantName,
    required String concept,
    required String cardEncryptedNumber,
    @Default([]) List<FileAttachment> attachments,
  }) = _DetailedCardTransaction;
}
