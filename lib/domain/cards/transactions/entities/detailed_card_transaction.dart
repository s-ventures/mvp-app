import 'package:manifiesto_mvp_app/domain/core/entities/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

class DetailedCardTransaction extends ExtendedTransactionDetails {
  DetailedCardTransaction({
    required this.movementId,
    required this.amount,
    required this.postingDate,
    required this.description,
    required this.placeId,
    required this.merchantName,
    required this.concept,
  });

  final UniqueId movementId;
  final double amount;
  final DateTime postingDate;
  final String? description;
  final String? placeId;
  final String merchantName;
  final String concept;
}
