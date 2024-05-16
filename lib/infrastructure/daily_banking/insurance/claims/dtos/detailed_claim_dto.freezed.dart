// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_claim_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedClaimDto _$DetailedClaimDtoFromJson(Map<String, dynamic> json) {
  return _DetailedClaimDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedClaimDto {
  int get claimId => throw _privateConstructorUsedError;
  int get insuranceId => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get dossier => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  ClaimStatusTypeDto get status => throw _privateConstructorUsedError;
  String get riskType => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get riskLocation => throw _privateConstructorUsedError;
  DateTime? get processStartDate => throw _privateConstructorUsedError;
  DateTime? get processEndDate => throw _privateConstructorUsedError;
  String get agentName => throw _privateConstructorUsedError;
  String get agentEmail => throw _privateConstructorUsedError;
  String get agentTelephone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedClaimDtoCopyWith<DetailedClaimDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedClaimDtoCopyWith<$Res> {
  factory $DetailedClaimDtoCopyWith(DetailedClaimDto value, $Res Function(DetailedClaimDto) then) =
      _$DetailedClaimDtoCopyWithImpl<$Res, DetailedClaimDto>;
  @useResult
  $Res call(
      {int claimId,
      int insuranceId,
      int year,
      String dossier,
      DateTime createDate,
      ClaimStatusTypeDto status,
      String riskType,
      String reason,
      String riskLocation,
      DateTime? processStartDate,
      DateTime? processEndDate,
      String agentName,
      String agentEmail,
      String agentTelephone});
}

/// @nodoc
class _$DetailedClaimDtoCopyWithImpl<$Res, $Val extends DetailedClaimDto>
    implements $DetailedClaimDtoCopyWith<$Res> {
  _$DetailedClaimDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimId = null,
    Object? insuranceId = null,
    Object? year = null,
    Object? dossier = null,
    Object? createDate = null,
    Object? status = null,
    Object? riskType = null,
    Object? reason = null,
    Object? riskLocation = null,
    Object? processStartDate = freezed,
    Object? processEndDate = freezed,
    Object? agentName = null,
    Object? agentEmail = null,
    Object? agentTelephone = null,
  }) {
    return _then(_value.copyWith(
      claimId: null == claimId
          ? _value.claimId
          : claimId // ignore: cast_nullable_to_non_nullable
              as int,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      dossier: null == dossier
          ? _value.dossier
          : dossier // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatusTypeDto,
      riskType: null == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      riskLocation: null == riskLocation
          ? _value.riskLocation
          : riskLocation // ignore: cast_nullable_to_non_nullable
              as String,
      processStartDate: freezed == processStartDate
          ? _value.processStartDate
          : processStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processEndDate: freezed == processEndDate
          ? _value.processEndDate
          : processEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      agentEmail: null == agentEmail
          ? _value.agentEmail
          : agentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      agentTelephone: null == agentTelephone
          ? _value.agentTelephone
          : agentTelephone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedClaimDtoImplCopyWith<$Res> implements $DetailedClaimDtoCopyWith<$Res> {
  factory _$$DetailedClaimDtoImplCopyWith(
          _$DetailedClaimDtoImpl value, $Res Function(_$DetailedClaimDtoImpl) then) =
      __$$DetailedClaimDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int claimId,
      int insuranceId,
      int year,
      String dossier,
      DateTime createDate,
      ClaimStatusTypeDto status,
      String riskType,
      String reason,
      String riskLocation,
      DateTime? processStartDate,
      DateTime? processEndDate,
      String agentName,
      String agentEmail,
      String agentTelephone});
}

/// @nodoc
class __$$DetailedClaimDtoImplCopyWithImpl<$Res>
    extends _$DetailedClaimDtoCopyWithImpl<$Res, _$DetailedClaimDtoImpl>
    implements _$$DetailedClaimDtoImplCopyWith<$Res> {
  __$$DetailedClaimDtoImplCopyWithImpl(
      _$DetailedClaimDtoImpl _value, $Res Function(_$DetailedClaimDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimId = null,
    Object? insuranceId = null,
    Object? year = null,
    Object? dossier = null,
    Object? createDate = null,
    Object? status = null,
    Object? riskType = null,
    Object? reason = null,
    Object? riskLocation = null,
    Object? processStartDate = freezed,
    Object? processEndDate = freezed,
    Object? agentName = null,
    Object? agentEmail = null,
    Object? agentTelephone = null,
  }) {
    return _then(_$DetailedClaimDtoImpl(
      claimId: null == claimId
          ? _value.claimId
          : claimId // ignore: cast_nullable_to_non_nullable
              as int,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      dossier: null == dossier
          ? _value.dossier
          : dossier // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatusTypeDto,
      riskType: null == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      riskLocation: null == riskLocation
          ? _value.riskLocation
          : riskLocation // ignore: cast_nullable_to_non_nullable
              as String,
      processStartDate: freezed == processStartDate
          ? _value.processStartDate
          : processStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processEndDate: freezed == processEndDate
          ? _value.processEndDate
          : processEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      agentEmail: null == agentEmail
          ? _value.agentEmail
          : agentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      agentTelephone: null == agentTelephone
          ? _value.agentTelephone
          : agentTelephone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedClaimDtoImpl implements _DetailedClaimDto {
  const _$DetailedClaimDtoImpl(
      {required this.claimId,
      required this.insuranceId,
      required this.year,
      required this.dossier,
      required this.createDate,
      required this.status,
      required this.riskType,
      required this.reason,
      required this.riskLocation,
      required this.processStartDate,
      required this.processEndDate,
      required this.agentName,
      required this.agentEmail,
      required this.agentTelephone});

  factory _$DetailedClaimDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedClaimDtoImplFromJson(json);

  @override
  final int claimId;
  @override
  final int insuranceId;
  @override
  final int year;
  @override
  final String dossier;
  @override
  final DateTime createDate;
  @override
  final ClaimStatusTypeDto status;
  @override
  final String riskType;
  @override
  final String reason;
  @override
  final String riskLocation;
  @override
  final DateTime? processStartDate;
  @override
  final DateTime? processEndDate;
  @override
  final String agentName;
  @override
  final String agentEmail;
  @override
  final String agentTelephone;

  @override
  String toString() {
    return 'DetailedClaimDto(claimId: $claimId, insuranceId: $insuranceId, year: $year, dossier: $dossier, createDate: $createDate, status: $status, riskType: $riskType, reason: $reason, riskLocation: $riskLocation, processStartDate: $processStartDate, processEndDate: $processEndDate, agentName: $agentName, agentEmail: $agentEmail, agentTelephone: $agentTelephone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedClaimDtoImpl &&
            (identical(other.claimId, claimId) || other.claimId == claimId) &&
            (identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.dossier, dossier) || other.dossier == dossier) &&
            (identical(other.createDate, createDate) || other.createDate == createDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.riskType, riskType) || other.riskType == riskType) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.riskLocation, riskLocation) || other.riskLocation == riskLocation) &&
            (identical(other.processStartDate, processStartDate) ||
                other.processStartDate == processStartDate) &&
            (identical(other.processEndDate, processEndDate) ||
                other.processEndDate == processEndDate) &&
            (identical(other.agentName, agentName) || other.agentName == agentName) &&
            (identical(other.agentEmail, agentEmail) || other.agentEmail == agentEmail) &&
            (identical(other.agentTelephone, agentTelephone) ||
                other.agentTelephone == agentTelephone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      claimId,
      insuranceId,
      year,
      dossier,
      createDate,
      status,
      riskType,
      reason,
      riskLocation,
      processStartDate,
      processEndDate,
      agentName,
      agentEmail,
      agentTelephone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedClaimDtoImplCopyWith<_$DetailedClaimDtoImpl> get copyWith =>
      __$$DetailedClaimDtoImplCopyWithImpl<_$DetailedClaimDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedClaimDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedClaimDto implements DetailedClaimDto {
  const factory _DetailedClaimDto(
      {required final int claimId,
      required final int insuranceId,
      required final int year,
      required final String dossier,
      required final DateTime createDate,
      required final ClaimStatusTypeDto status,
      required final String riskType,
      required final String reason,
      required final String riskLocation,
      required final DateTime? processStartDate,
      required final DateTime? processEndDate,
      required final String agentName,
      required final String agentEmail,
      required final String agentTelephone}) = _$DetailedClaimDtoImpl;

  factory _DetailedClaimDto.fromJson(Map<String, dynamic> json) = _$DetailedClaimDtoImpl.fromJson;

  @override
  int get claimId;
  @override
  int get insuranceId;
  @override
  int get year;
  @override
  String get dossier;
  @override
  DateTime get createDate;
  @override
  ClaimStatusTypeDto get status;
  @override
  String get riskType;
  @override
  String get reason;
  @override
  String get riskLocation;
  @override
  DateTime? get processStartDate;
  @override
  DateTime? get processEndDate;
  @override
  String get agentName;
  @override
  String get agentEmail;
  @override
  String get agentTelephone;
  @override
  @JsonKey(ignore: true)
  _$$DetailedClaimDtoImplCopyWith<_$DetailedClaimDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
