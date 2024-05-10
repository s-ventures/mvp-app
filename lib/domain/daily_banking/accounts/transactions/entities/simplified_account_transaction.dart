import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transaction_type.dart';

part 'simplified_account_transaction.freezed.dart';

@freezed
class SimplifiedAccountTransaction with _$SimplifiedAccountTransaction {
  const factory SimplifiedAccountTransaction({
    required UniqueId id,
    required UniqueId accountId,
    required String category,
    required String description,
    required DateTime date,
    required double amount,
    required double endBalance,
    required AccountTransactionType type,
  }) = _SimplifiedAccountTransaction;
}
