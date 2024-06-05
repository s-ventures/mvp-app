// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_claims_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedClaimsState {
  List<int>? get insuranceIds => throw _privateConstructorUsedError;
  DateTime? get createDateFrom => throw _privateConstructorUsedError;
  DateTime? get createDateTo => throw _privateConstructorUsedError;
  ClaimStatusType? get status => throw _privateConstructorUsedError;
  String? get riskType => throw _privateConstructorUsedError;
  AsyncValue<List<SimplifiedClaim>> get claims =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedClaimsStateCopyWith<SimplifiedClaimsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedClaimsStateCopyWith<$Res> {
  factory $SimplifiedClaimsStateCopyWith(SimplifiedClaimsState value,
          $Res Function(SimplifiedClaimsState) then) =
      _$SimplifiedClaimsStateCopyWithImpl<$Res, SimplifiedClaimsState>;
  @useResult
  $Res call(
      {List<int>? insuranceIds,
      DateTime? createDateFrom,
      DateTime? createDateTo,
      ClaimStatusType? status,
      String? riskType,
      AsyncValue<List<SimplifiedClaim>> claims});
}

/// @nodoc
class _$SimplifiedClaimsStateCopyWithImpl<$Res,
        $Val extends SimplifiedClaimsState>
    implements $SimplifiedClaimsStateCopyWith<$Res> {
  _$SimplifiedClaimsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceIds = freezed,
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
    Object? status = freezed,
    Object? riskType = freezed,
    Object? claims = null,
  }) {
    return _then(_value.copyWith(
      insuranceIds: freezed == insuranceIds
          ? _value.insuranceIds
          : insuranceIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createDateFrom: freezed == createDateFrom
          ? _value.createDateFrom
          : createDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createDateTo: freezed == createDateTo
          ? _value.createDateTo
          : createDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatusType?,
      riskType: freezed == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String?,
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedClaim>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedClaimsStateImplCopyWith<$Res>
    implements $SimplifiedClaimsStateCopyWith<$Res> {
  factory _$$SimplifiedClaimsStateImplCopyWith(
          _$SimplifiedClaimsStateImpl value,
          $Res Function(_$SimplifiedClaimsStateImpl) then) =
      __$$SimplifiedClaimsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? insuranceIds,
      DateTime? createDateFrom,
      DateTime? createDateTo,
      ClaimStatusType? status,
      String? riskType,
      AsyncValue<List<SimplifiedClaim>> claims});
}

/// @nodoc
class __$$SimplifiedClaimsStateImplCopyWithImpl<$Res>
    extends _$SimplifiedClaimsStateCopyWithImpl<$Res,
        _$SimplifiedClaimsStateImpl>
    implements _$$SimplifiedClaimsStateImplCopyWith<$Res> {
  __$$SimplifiedClaimsStateImplCopyWithImpl(_$SimplifiedClaimsStateImpl _value,
      $Res Function(_$SimplifiedClaimsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceIds = freezed,
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
    Object? status = freezed,
    Object? riskType = freezed,
    Object? claims = null,
  }) {
    return _then(_$SimplifiedClaimsStateImpl(
      insuranceIds: freezed == insuranceIds
          ? _value._insuranceIds
          : insuranceIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createDateFrom: freezed == createDateFrom
          ? _value.createDateFrom
          : createDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createDateTo: freezed == createDateTo
          ? _value.createDateTo
          : createDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatusType?,
      riskType: freezed == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String?,
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedClaim>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedClaimsStateImpl implements _SimplifiedClaimsState {
  const _$SimplifiedClaimsStateImpl(
      {final List<int>? insuranceIds,
      this.createDateFrom,
      this.createDateTo,
      this.status,
      this.riskType,
      this.claims = const AsyncLoading<List<SimplifiedClaim>>()})
      : _insuranceIds = insuranceIds;

  final List<int>? _insuranceIds;
  @override
  List<int>? get insuranceIds {
    final value = _insuranceIds;
    if (value == null) return null;
    if (_insuranceIds is EqualUnmodifiableListView) return _insuranceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createDateFrom;
  @override
  final DateTime? createDateTo;
  @override
  final ClaimStatusType? status;
  @override
  final String? riskType;
  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedClaim>> claims;

  @override
  String toString() {
    return 'SimplifiedClaimsState(insuranceIds: $insuranceIds, createDateFrom: $createDateFrom, createDateTo: $createDateTo, status: $status, riskType: $riskType, claims: $claims)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedClaimsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._insuranceIds, _insuranceIds) &&
            (identical(other.createDateFrom, createDateFrom) ||
                other.createDateFrom == createDateFrom) &&
            (identical(other.createDateTo, createDateTo) ||
                other.createDateTo == createDateTo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.riskType, riskType) ||
                other.riskType == riskType) &&
            (identical(other.claims, claims) || other.claims == claims));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_insuranceIds),
      createDateFrom,
      createDateTo,
      status,
      riskType,
      claims);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedClaimsStateImplCopyWith<_$SimplifiedClaimsStateImpl>
      get copyWith => __$$SimplifiedClaimsStateImplCopyWithImpl<
          _$SimplifiedClaimsStateImpl>(this, _$identity);
}

abstract class _SimplifiedClaimsState implements SimplifiedClaimsState {
  const factory _SimplifiedClaimsState(
          {final List<int>? insuranceIds,
          final DateTime? createDateFrom,
          final DateTime? createDateTo,
          final ClaimStatusType? status,
          final String? riskType,
          final AsyncValue<List<SimplifiedClaim>> claims}) =
      _$SimplifiedClaimsStateImpl;

  @override
  List<int>? get insuranceIds;
  @override
  DateTime? get createDateFrom;
  @override
  DateTime? get createDateTo;
  @override
  ClaimStatusType? get status;
  @override
  String? get riskType;
  @override
  AsyncValue<List<SimplifiedClaim>> get claims;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedClaimsStateImplCopyWith<_$SimplifiedClaimsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
