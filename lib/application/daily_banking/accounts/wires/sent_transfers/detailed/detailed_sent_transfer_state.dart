import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/detailed_sent_transfer.dart';

part 'detailed_sent_transfer_state.freezed.dart';

@freezed
class DetailedSentTransferState with _$DetailedSentTransferState {
  const factory DetailedSentTransferState({
    @Default(AsyncLoading<DetailedSentTransfer>())
    AsyncValue<DetailedSentTransfer> sentTransfer,
  }) = _DetailedSentTransferState;
}
