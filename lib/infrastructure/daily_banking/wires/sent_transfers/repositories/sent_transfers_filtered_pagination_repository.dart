import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/repositories/sent_transfers_repository.dart';

final sentTransfersFilteredPaginationRepositoryProvider =
    Provider<SentTransfersFilteredPaginationRepository>(
  (ref) => SentTransfersFilteredPaginationRepository(
    ref.watch(sentTransfersRepositoryProvider),
  ),
);

class SentTransfersFilteredPaginationRepository
    extends FilteredPaginationListRepository<SimplifiedSentTransfer, SentTransfersFilter> {
  SentTransfersFilteredPaginationRepository(
    this._sentTransfersRepository,
  );
  final SentTransfersRepository _sentTransfersRepository;
  SentTransfersFilter? _filter;

  @override
  Future<List<SimplifiedSentTransfer>> fetchPage({
    required int page,
    required int pageSize,
    SentTransfersFilter? filter,
  }) async {
    final sentTransfers = await _sentTransfersRepository.getSimplifiedSentTransfers(
      filter: _filter ?? const SentTransfersFilter(),
      page: page,
      pageSize: pageSize,
    );
    return sentTransfers.fold(
      (l) => <SimplifiedSentTransfer>[],
      (r) => r,
    );
  }
}
