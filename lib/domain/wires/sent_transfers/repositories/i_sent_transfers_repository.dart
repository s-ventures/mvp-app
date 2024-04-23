import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/failures/simplified_sent_transfer_failure.dart';

// ignore: one_member_abstracts
abstract class ISentTransfersRepository {
  Future<Either<SimplifiedSentTransferFailure, List<SimplifiedSentTransfer>>>
      getSimplifiedSentTransfers({
    required SentTransfersFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });
}
