import 'package:manifiesto_mvp_app/domain/core/entities/extended_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_type.dart';

class TransferOutTransactionDetails extends ExtendedTransactionDetails {
  TransferOutTransactionDetails({
    required this.sentTransferId,
    required this.senderReference,
    required this.type,
    required this.concept,
    required this.settlementAmount,
    required this.valueDate,
    required this.orderDate,
    required this.beneficiaryName,
    required this.beneficiaryAccount,
    required this.concept2,
  });

  final UniqueId sentTransferId;
  final String? senderReference;
  final SentTransferType? type;
  final String concept;
  final double settlementAmount;
  final DateTime? valueDate;
  final DateTime? orderDate;
  final String beneficiaryName;
  final String beneficiaryAccount;
  final String? concept2;
}
