import 'package:manifiesto_mvp_app/domain/core/entities/extended_transaction_details/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

class TransferOutTransactionDetails extends ExtendedTransactionDetails {
  TransferOutTransactionDetails({
    required this.senderReference,
  });

  final UniqueId senderReference;
}
