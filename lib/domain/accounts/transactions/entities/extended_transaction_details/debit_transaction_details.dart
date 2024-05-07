import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/extended_transaction_details/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

class DebitTransactionDetails extends ExtendedTransactionDetails {
  DebitTransactionDetails({
    required this.debitId,
    required this.amount,
    this.issuer,
    this.identification,
    this.dueDate,
    this.paymentDate,
  });

  final UniqueId debitId;
  final double amount;
  final String? issuer;
  final String? identification;
  final DateTime? dueDate;
  final DateTime? paymentDate;
}
