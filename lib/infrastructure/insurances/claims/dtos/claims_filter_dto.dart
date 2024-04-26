// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "claimId": 0,
//   "insuranceId": [
//     0
//   ],
//   "dossier": "string",
//   "createDateFrom": "2024-04-12",
//   "createDateTo": "2024-04-12",
//   "status": "string",
//   "riskType": "string",
//   "reason": "string",
//   "riskLocation": "string",
//   "processStartDateFrom": "2024-04-12",
//   "processStartDateTo": "2024-04-12",
//   "processEndDateFrom": "2024-04-12",
//   "processEndDateTo": "2024-04-12",
//   "agentName": "string",
//   "agentEmail": "string",
//   "agentTelephone": "string"
// }

// ignore_for_file: invalid_annotation_target

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';

part 'claims_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class ClaimsFilterDto extends PaginatedRequest {
  ClaimsFilterDto({
    this.claimId,
    this.insuranceId,
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
      claimId: filter.claimId,
      insuranceId: filter.insuranceIds,
      dossier: filter.dossier,
      createDateFrom: filter.createDateFrom,
      createDateTo: filter.createDateTo,
      status: filter.status,
      riskType: filter.riskType,
      reason: filter.reason,
      riskLocation: filter.riskLocation,
      processStartDateFrom: filter.processStartDateFrom,
      processStartDateTo: filter.processStartDateTo,
      processEndDateFrom: filter.processEndDateFrom,
      processEndDateTo: filter.processEndDateTo,
      agentName: filter.agentName,
      agentEmail: filter.agentEmail,
      agentTelephone: filter.agentTelephone,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory ClaimsFilterDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimsFilterDtoFromJson(json);

  final int? claimId;
  final List<int>? insuranceId;
  final String? dossier;
  @DateConverter()
  final DateTime? createDateFrom;
  @DateConverter()
  final DateTime? createDateTo;
  final String? status;
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
