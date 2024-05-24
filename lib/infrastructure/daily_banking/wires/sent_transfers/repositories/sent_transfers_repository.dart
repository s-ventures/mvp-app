import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/detailed_sent_transfer.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/failures/detailed_sent_transfer_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/failures/simplified_sent_transfer_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/repositories/i_sent_transfers_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/wires/sent_transfers_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/data_sources/sent_transfers_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/detailed_sent_transfer_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfers_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/simplified_sent_transfer_dto.dart';

final sentTransfersRepositoryProvider = Provider<SentTransfersRepository>(
  (ref) => SentTransfersRepository(
    remoteDataSource: SentTransfersRemoteDataSource(
      ref.watch(sentTransfersRestClientProvider),
    ),
  ),
);

class SentTransfersRepository implements ISentTransfersRepository {
  SentTransfersRepository({
    required SentTransfersRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final SentTransfersRemoteDataSource _remoteDataSource;

  @override
  Future<Either<SimplifiedSentTransferFailure, List<SimplifiedSentTransfer>>>
      getSimplifiedSentTransfers({
    required SentTransfersFilter filter,
    int page = 0,
    int pageSize = 10,
  }) async {
    final filterDto = SentTransfersFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getSimplifiedSentTransfers(
        filterDto: filterDto,
      );
      final sentTransfers = response.data.map((e) => e.toDomain()).toList();
      return right(sentTransfers);
    } catch (_) {
      return left(const SimplifiedSentTransferFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedSentTransferFailure, DetailedSentTransfer>> getDetailedSentTransfer({
    required int sentTransferId,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedSentTransfer(
        sentTransferId: sentTransferId,
      );
      final sentTransfer = response.toDomain();
      return right(sentTransfer);
    } catch (_) {
      return left(const DetailedSentTransferFailure.unexpected());
    }
  }
}
