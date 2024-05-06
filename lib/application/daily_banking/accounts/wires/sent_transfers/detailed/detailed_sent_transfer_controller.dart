import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/detailed/detailed_sent_transfer_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/repositories/sent_transfers_repository.dart';

final detailedSentTransferControllerProvider = StateNotifierProvider
    .autoDispose<DetailedSentTransferController, DetailedSentTransferState>(
  (ref) => DetailedSentTransferController(
    ref.watch(sentTransfersRepositoryProvider),
  ),
);

class DetailedSentTransferController
    extends StateNotifier<DetailedSentTransferState> {
  DetailedSentTransferController(this._repository)
      : super(const DetailedSentTransferState());

  final SentTransfersRepository _repository;

  Future<void> init({required int sentTransferId}) async {
    try {
      final transactionOrFailure = await _repository.getDetailedSentTransfer(
        sentTransferId: sentTransferId,
      );

      setStateSafe(
        () => transactionOrFailure.fold(
          (l) =>
              state.copyWith(sentTransfer: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(sentTransfer: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(sentTransfer: AsyncError(e, StackTrace.current));
    }
  }
}
