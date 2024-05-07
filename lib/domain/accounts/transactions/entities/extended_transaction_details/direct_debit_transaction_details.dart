import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/extended_transaction_details/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

class DirectDebitTransactionDetails extends ExtendedTransactionDetails {
  DirectDebitTransactionDetails({
    required this.directDebitId,
    required this.issuer,
    required this.debitReference,
    required this.returnDate,
  });

  final UniqueId directDebitId;
  final String? issuer;
  final String? debitReference;
  final DateTime? returnDate;
}
