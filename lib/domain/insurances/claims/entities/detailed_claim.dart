import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'detailed_claim.freezed.dart';

@freezed
class DetailedClaim with _$DetailedClaim {
  const factory DetailedClaim({
    required UniqueId id,
    required UniqueId insuranceId,
    required int year,
    required String dossier,
    required DateTime createDate,
    required String status,
    required String riskType,
    required String reason,
    required String riskLocation,
    required DateTime? processStartDate,
    required DateTime? processEndDate,
    required String agentName,
    required String agentEmail,
    required String agentTelephone,
  }) = _DetailedClaim;
}
