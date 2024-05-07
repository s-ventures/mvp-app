import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/extended_transaction_details/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_type.dart';

class TransferInTransactionDetails extends ExtendedTransactionDetails {
  TransferInTransactionDetails({
    required this.receivedTransferId,
    required this.type,
    required this.concept,
    required this.settlementAmount,
    required this.valueDate,
    required this.orderDate,
    required this.senderName,
    required this.senderAccount,
    required this.concept2,
  });

  final UniqueId receivedTransferId;
  final SentTransferType? type;
  final String concept;
  final double settlementAmount;
  final DateTime? valueDate;
  final DateTime? orderDate;
  final String senderName;
  final String senderAccount;
  final String? concept2;
}
