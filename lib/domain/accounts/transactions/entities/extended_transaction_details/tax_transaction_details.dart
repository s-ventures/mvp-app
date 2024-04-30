import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/extended_transaction_details/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

class TaxTransactionDetails extends ExtendedTransactionDetails {
  TaxTransactionDetails({
    required this.id,
    required this.issuerName,
    required this.accrualDate,
    required this.paymentDate,
  });

  final UniqueId id;
  final String issuerName;
  final DateTime accrualDate;
  final DateTime paymentDate;
}
