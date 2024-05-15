import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/failures/stakeholder_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/repositories/i_stakeholders_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/stakeholders_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/data_sources/remote/stakeholders_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/legal_stakeholder_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/natural_stakeholder_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/person_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholders_filter_dto.dart';

final stakeholdersRepositoryProvider = Provider<StakeholdersRepository>((ref) {
  return StakeholdersRepository(
    remoteDataSource:
        StakeholdersRemoteDataSource(ref.watch(stakeholdersRestClientProvider)),
  );
});

class StakeholdersRepository implements IStakeholdersRepository {
  StakeholdersRepository({
    required StakeholdersRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final StakeholdersRemoteDataSource _remoteDataSource;

  @override
  Future<Either<StakeholderFailure, List<Stakeholder>>> getStakeholders({
    required String erpContractId,
    required StakeholdersFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = StakeholdersFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final result = await _remoteDataSource.getStakeholders(
        erpContractId: erpContractId,
        filterDto: filterDto,
      );
      onPaginationInfo?.call(result.totalPages, result.totalElements);
      return right(
        result.data
            .map(
              (e) => e.personTypeCode == PersonTypeCodeDto.natural
                  ? (e as NaturalStakeholderDto).toDomain()
                  : (e as LegalStakeholderDto).toDomain(),
            )
            .toList(),
      );
    } catch (_) {
      return left(const StakeholderFailure.unexpected());
    }
  }
}
