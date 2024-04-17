// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_claim_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimplifiedClaimDto _$SimplifiedClaimDtoFromJson(Map<String, dynamic> json) {
  return _SimplifiedClaimDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedClaimDto {
  int get claimId => throw _privateConstructorUsedError;
  int get insuranceId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get riskType => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedClaimDtoCopyWith<SimplifiedClaimDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedClaimDtoCopyWith<$Res> {
  factory $SimplifiedClaimDtoCopyWith(
          SimplifiedClaimDto value, $Res Function(SimplifiedClaimDto) then) =
      _$SimplifiedClaimDtoCopyWithImpl<$Res, SimplifiedClaimDto>;
  @useResult
  $Res call(
      {int claimId,
      int insuranceId,
      String status,
      String riskType,
      String reason});
}

/// @nodoc
class _$SimplifiedClaimDtoCopyWithImpl<$Res, $Val extends SimplifiedClaimDto>
    implements $SimplifiedClaimDtoCopyWith<$Res> {
  _$SimplifiedClaimDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimId = null,
    Object? insuranceId = null,
    Object? status = null,
    Object? riskType = null,
    Object? reason = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      riskType: null == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedClaimDtoImplCopyWith<$Res>
    implements $SimplifiedClaimDtoCopyWith<$Res> {
  factory _$$SimplifiedClaimDtoImplCopyWith(_$SimplifiedClaimDtoImpl value,
          $Res Function(_$SimplifiedClaimDtoImpl) then) =
      __$$SimplifiedClaimDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int claimId,
      int insuranceId,
      String status,
      String riskType,
      String reason});
}

/// @nodoc
class __$$SimplifiedClaimDtoImplCopyWithImpl<$Res>
    extends _$SimplifiedClaimDtoCopyWithImpl<$Res, _$SimplifiedClaimDtoImpl>
    implements _$$SimplifiedClaimDtoImplCopyWith<$Res> {
  __$$SimplifiedClaimDtoImplCopyWithImpl(_$SimplifiedClaimDtoImpl _value,
      $Res Function(_$SimplifiedClaimDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimId = null,
    Object? insuranceId = null,
    Object? status = null,
    Object? riskType = null,
    Object? reason = null,
  }) {
    return _then(_$SimplifiedClaimDtoImpl(
      claimId: null == claimId
          ? _value.claimId
          : claimId // ignore: cast_nullable_to_non_nullable
              as int,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      riskType: null == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimplifiedClaimDtoImpl implements _SimplifiedClaimDto {
  const _$SimplifiedClaimDtoImpl(
      {required this.claimId,
      required this.insuranceId,
      required this.status,
      required this.riskType,
      required this.reason});

  factory _$SimplifiedClaimDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimplifiedClaimDtoImplFromJson(json);

  @override
  final int claimId;
  @override
  final int insuranceId;
  @override
  final String status;
  @override
  final String riskType;
  @override
  final String reason;

  @override
  String toString() {
    return 'SimplifiedClaimDto(claimId: $claimId, insuranceId: $insuranceId, status: $status, riskType: $riskType, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedClaimDtoImpl &&
            (identical(other.claimId, claimId) || other.claimId == claimId) &&
            (identical(other.insuranceId, insuranceId) ||
                other.insuranceId == insuranceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.riskType, riskType) ||
                other.riskType == riskType) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, claimId, insuranceId, status, riskType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedClaimDtoImplCopyWith<_$SimplifiedClaimDtoImpl> get copyWith =>
      __$$SimplifiedClaimDtoImplCopyWithImpl<_$SimplifiedClaimDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimplifiedClaimDtoImplToJson(
      this,
    );
  }
}

abstract class _SimplifiedClaimDto implements SimplifiedClaimDto {
  const factory _SimplifiedClaimDto(
      {required final int claimId,
      required final int insuranceId,
      required final String status,
      required final String riskType,
      required final String reason}) = _$SimplifiedClaimDtoImpl;

  factory _SimplifiedClaimDto.fromJson(Map<String, dynamic> json) =
      _$SimplifiedClaimDtoImpl.fromJson;

  @override
  int get claimId;
  @override
  int get insuranceId;
  @override
  String get status;
  @override
  String get riskType;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedClaimDtoImplCopyWith<_$SimplifiedClaimDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
