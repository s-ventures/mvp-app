// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_claim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedClaim {
  UniqueId get id => throw _privateConstructorUsedError;
  int get insuranceId => throw _privateConstructorUsedError;
  ClaimStatusType get status => throw _privateConstructorUsedError;
  String get riskType => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedClaimCopyWith<SimplifiedClaim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedClaimCopyWith<$Res> {
  factory $SimplifiedClaimCopyWith(
          SimplifiedClaim value, $Res Function(SimplifiedClaim) then) =
      _$SimplifiedClaimCopyWithImpl<$Res, SimplifiedClaim>;
  @useResult
  $Res call(
      {UniqueId id,
      int insuranceId,
      ClaimStatusType status,
      String riskType,
      String reason});
}

/// @nodoc
class _$SimplifiedClaimCopyWithImpl<$Res, $Val extends SimplifiedClaim>
    implements $SimplifiedClaimCopyWith<$Res> {
  _$SimplifiedClaimCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? insuranceId = null,
    Object? status = null,
    Object? riskType = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatusType,
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
abstract class _$$SimplifiedClaimImplCopyWith<$Res>
    implements $SimplifiedClaimCopyWith<$Res> {
  factory _$$SimplifiedClaimImplCopyWith(_$SimplifiedClaimImpl value,
          $Res Function(_$SimplifiedClaimImpl) then) =
      __$$SimplifiedClaimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      int insuranceId,
      ClaimStatusType status,
      String riskType,
      String reason});
}

/// @nodoc
class __$$SimplifiedClaimImplCopyWithImpl<$Res>
    extends _$SimplifiedClaimCopyWithImpl<$Res, _$SimplifiedClaimImpl>
    implements _$$SimplifiedClaimImplCopyWith<$Res> {
  __$$SimplifiedClaimImplCopyWithImpl(
      _$SimplifiedClaimImpl _value, $Res Function(_$SimplifiedClaimImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? insuranceId = null,
    Object? status = null,
    Object? riskType = null,
    Object? reason = null,
  }) {
    return _then(_$SimplifiedClaimImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatusType,
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

class _$SimplifiedClaimImpl implements _SimplifiedClaim {
  const _$SimplifiedClaimImpl(
      {required this.id,
      required this.insuranceId,
      required this.status,
      required this.riskType,
      required this.reason});

  @override
  final UniqueId id;
  @override
  final int insuranceId;
  @override
  final ClaimStatusType status;
  @override
  final String riskType;
  @override
  final String reason;

  @override
  String toString() {
    return 'SimplifiedClaim(id: $id, insuranceId: $insuranceId, status: $status, riskType: $riskType, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedClaimImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.insuranceId, insuranceId) ||
                other.insuranceId == insuranceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.riskType, riskType) ||
                other.riskType == riskType) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, insuranceId, status, riskType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedClaimImplCopyWith<_$SimplifiedClaimImpl> get copyWith =>
      __$$SimplifiedClaimImplCopyWithImpl<_$SimplifiedClaimImpl>(
          this, _$identity);
}

abstract class _SimplifiedClaim implements SimplifiedClaim {
  const factory _SimplifiedClaim(
      {required final UniqueId id,
      required final int insuranceId,
      required final ClaimStatusType status,
      required final String riskType,
      required final String reason}) = _$SimplifiedClaimImpl;

  @override
  UniqueId get id;
  @override
  int get insuranceId;
  @override
  ClaimStatusType get status;
  @override
  String get riskType;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedClaimImplCopyWith<_$SimplifiedClaimImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
