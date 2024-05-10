// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "claimId": 0,
//   "insuranceId": [
//     0
//   ],
//   "year": 0,
//   "dossier": "string",
//   "createDateFrom": "2024-05-08",
//   "createDateTo": "2024-05-08",
//   "status": "string",
//   "riskType": "string",
//   "reason": "string",
//   "riskLocation": "string",
//   "processStartDateFrom": "2024-05-08",
//   "processStartDateTo": "2024-05-08",
//   "processEndDateFrom": "2024-05-08",
//   "processEndDateTo": "2024-05-08",
//   "agentName": "string",
//   "agentEmail": "string",
//   "agentTelephone": "string"
// }

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/dtos/claim_status_type_dto.dart';

part 'claims_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class ClaimsFilterDto extends PaginatedRequest {
  ClaimsFilterDto({
    this.claimId,
    this.insuranceId,
    this.year,
    this.dossier,
    this.createDateFrom,
    this.createDateTo,
    this.status,
    this.riskType,
    this.reason,
    this.riskLocation,
    this.processStartDateFrom,
    this.processStartDateTo,
    this.processEndDateFrom,
    this.processEndDateTo,
    this.agentName,
    this.agentEmail,
    this.agentTelephone,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory ClaimsFilterDto.fromDomain({
    required ClaimsFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return ClaimsFilterDto(
      insuranceId: filter.insuranceIds,
      createDateFrom: filter.createDateFrom,
      createDateTo: filter.createDateTo,
      status: filter.status?.toDto(),
      riskType: filter.riskType,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory ClaimsFilterDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimsFilterDtoFromJson(json);

  final int? claimId;
  final List<int>? insuranceId;
  final int? year;
  final String? dossier;
  @DateConverter()
  final DateTime? createDateFrom;
  @DateConverter()
  final DateTime? createDateTo;
  final ClaimStatusTypeDto? status;
  final String? riskType;
  final String? reason;
  final String? riskLocation;
  @DateConverter()
  final DateTime? processStartDateFrom;
  @DateConverter()
  final DateTime? processStartDateTo;
  @DateConverter()
  final DateTime? processEndDateFrom;
  @DateConverter()
  final DateTime? processEndDateTo;
  final String? agentName;
  final String? agentEmail;
  final String? agentTelephone;

  @override
  Map<String, dynamic> toJson() => _$ClaimsFilterDtoToJson(this);
}
