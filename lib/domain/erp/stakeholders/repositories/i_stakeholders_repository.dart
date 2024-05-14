import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/failures/stakeholder_failure.dart';

// ignore: one_member_abstracts
abstract class IStakeholdersRepository {
  Future<Either<StakeholderFailure, List<Stakeholder>>> getStakeholders({
    required String erpContractId,
    required StakeholdersFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });
}
