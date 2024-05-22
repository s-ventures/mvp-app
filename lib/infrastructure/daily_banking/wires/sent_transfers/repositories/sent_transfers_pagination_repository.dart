import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/repositories/sent_transfers_repository.dart';

final sentTransfersPaginationRepositoryProvider = Provider<SentTransfersPaginationRepository>(
  (ref) => SentTransfersPaginationRepository(
    ref.watch(sentTransfersRepositoryProvider),
  ),
);

class SentTransfersPaginationRepository extends PaginationListRepository<SimplifiedSentTransfer> {
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

  void updateFilter({
    required int? amountFrom,
    required int? amountTo,
    required DateTime? startDateFrom,
    required DateTime? startDateTo,
  }) {
    _filter = (_filter ?? const SentTransfersFilter()).copyWith(
      settlementAmountFrom: amountFrom,
      settlementAmountTo: amountTo,
      orderDateFrom: startDateFrom,
      orderDateTo: startDateTo,
    );
  }
}
