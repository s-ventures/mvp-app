import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/detailed_sent_transfer.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/failures/detailed_sent_transfer_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/failures/simplified_sent_transfer_failure.dart';

abstract class ISentTransfersRepository {
  Future<Either<SimplifiedSentTransferFailure, List<SimplifiedSentTransfer>>>
      getSimplifiedSentTransfers({
    required SentTransfersFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedSentTransferFailure, DetailedSentTransfer>>
      getDetailedSentTransfer({required int sentTransferId});
}
