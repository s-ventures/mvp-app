import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/failures/simplified_sent_transfer_failure.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/repositories/i_sent_transfers_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/wires/sent_transfers_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/data_sources/sent_transfers_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfers_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/simplified_sent_transfer_dto.dart';

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
    void Function(int totalPages, int totalElements)? onPaginationInfo,
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
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final sentTransfers = response.data.map((e) => e.toDomain()).toList();
      return right(sentTransfers);
    } catch (_) {
      return left(const SimplifiedSentTransferFailure.unexpected());
    }
  }
}
