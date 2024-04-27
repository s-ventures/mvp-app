import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/repositories/sent_transfers_repository.dart';

final sentTransfersPaginationRepositoryProvider =
    Provider<SentTransfersPaginationRepository>(
  (ref) => SentTransfersPaginationRepository(
    ref.watch(sentTransfersRepositoryProvider),
  ),
);

class SentTransfersPaginationRepository
    extends PaginationListRepository<SimplifiedSentTransfer> {
  SentTransfersPaginationRepository(
    this._sentTransfersRepository,
  );
  final SentTransfersRepository _sentTransfersRepository;
  SentTransfersFilter? _filter;

  @override
  Future<List<SimplifiedSentTransfer>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;

    final sentTransfers =
        await _sentTransfersRepository.getSimplifiedSentTransfers(
      filter: filter ?? const SentTransfersFilter(),
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return sentTransfers.fold(
      (l) => <SimplifiedSentTransfer>[],
      (r) => r,
    );
  }
}
