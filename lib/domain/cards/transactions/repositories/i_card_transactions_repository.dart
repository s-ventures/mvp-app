import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/failures/simplified_card_transaction_failure.dart';

// ignore: one_member_abstracts
abstract class ICardTransactionsRepository {
  Future<
          Either<SimplifiedCardTransactionFailure,
              Map<DateTime, List<SimplifiedCardTransaction>>>>
      getSimplifiedCardTransactions({
    required CardTransactionsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });
}
