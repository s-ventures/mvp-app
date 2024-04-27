import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/simplified_sent_transfer.dart';

part 'simplified_sent_transfers_state.freezed.dart';

@freezed
class SimplifiedSentTransfersState with _$SimplifiedSentTransfersState {
  const factory SimplifiedSentTransfersState({
    @Default(AsyncLoading<List<SimplifiedSentTransfer>>())
    AsyncValue<List<SimplifiedSentTransfer>> sentTransfers,
    @Default(AsyncLoading<List<SimplifiedSentTransfer>>())
    AsyncValue<List<SimplifiedSentTransfer>> lastSentTransfers,
  }) = _SimplifiedSentTransfersState;
}
