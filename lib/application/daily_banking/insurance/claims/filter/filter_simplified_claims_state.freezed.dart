// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_simplified_claims_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterSimplifiedClaimsState {
  List<int>? get insuranceIds => throw _privateConstructorUsedError;
  DateTime? get createDateFrom => throw _privateConstructorUsedError;
  DateTime? get createDateTo => throw _privateConstructorUsedError;
  ClaimStatusType? get status => throw _privateConstructorUsedError;
  String? get riskType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSimplifiedClaimsStateCopyWith<FilterSimplifiedClaimsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSimplifiedClaimsStateCopyWith<$Res> {
  factory $FilterSimplifiedClaimsStateCopyWith(
          FilterSimplifiedClaimsState value, $Res Function(FilterSimplifiedClaimsState) then) =
      _$FilterSimplifiedClaimsStateCopyWithImpl<$Res, FilterSimplifiedClaimsState>;
  @useResult
  $Res call(
      {List<int>? insuranceIds,
      DateTime? createDateFrom,
      DateTime? createDateTo,
      ClaimStatusType? status,
      String? riskType});
}

/// @nodoc
class _$FilterSimplifiedClaimsStateCopyWithImpl<$Res, $Val extends FilterSimplifiedClaimsState>
    implements $FilterSimplifiedClaimsStateCopyWith<$Res> {
  _$FilterSimplifiedClaimsStateCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSimplifiedClaimsStateImplCopyWith<$Res>
    implements $FilterSimplifiedClaimsStateCopyWith<$Res> {
  factory _$$FilterSimplifiedClaimsStateImplCopyWith(_$FilterSimplifiedClaimsStateImpl value,
          $Res Function(_$FilterSimplifiedClaimsStateImpl) then) =
      __$$FilterSimplifiedClaimsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? insuranceIds,
      DateTime? createDateFrom,
      DateTime? createDateTo,
      ClaimStatusType? status,
      String? riskType});
}

/// @nodoc
class __$$FilterSimplifiedClaimsStateImplCopyWithImpl<$Res>
    extends _$FilterSimplifiedClaimsStateCopyWithImpl<$Res, _$FilterSimplifiedClaimsStateImpl>
    implements _$$FilterSimplifiedClaimsStateImplCopyWith<$Res> {
  __$$FilterSimplifiedClaimsStateImplCopyWithImpl(_$FilterSimplifiedClaimsStateImpl _value,
      $Res Function(_$FilterSimplifiedClaimsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceIds = freezed,
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
    Object? status = freezed,
    Object? riskType = freezed,
  }) {
    return _then(_$FilterSimplifiedClaimsStateImpl(
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
    ));
  }
}

/// @nodoc

class _$FilterSimplifiedClaimsStateImpl implements _FilterSimplifiedClaimsState {
  const _$FilterSimplifiedClaimsStateImpl(
      {final List<int>? insuranceIds,
      this.createDateFrom,
      this.createDateTo,
      this.status,
      this.riskType})
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
  String toString() {
    return 'FilterSimplifiedClaimsState(insuranceIds: $insuranceIds, createDateFrom: $createDateFrom, createDateTo: $createDateTo, status: $status, riskType: $riskType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSimplifiedClaimsStateImpl &&
            const DeepCollectionEquality().equals(other._insuranceIds, _insuranceIds) &&
            (identical(other.createDateFrom, createDateFrom) ||
                other.createDateFrom == createDateFrom) &&
            (identical(other.createDateTo, createDateTo) || other.createDateTo == createDateTo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.riskType, riskType) || other.riskType == riskType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_insuranceIds),
      createDateFrom, createDateTo, status, riskType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSimplifiedClaimsStateImplCopyWith<_$FilterSimplifiedClaimsStateImpl> get copyWith =>
      __$$FilterSimplifiedClaimsStateImplCopyWithImpl<_$FilterSimplifiedClaimsStateImpl>(
          this, _$identity);
}

abstract class _FilterSimplifiedClaimsState implements FilterSimplifiedClaimsState {
  const factory _FilterSimplifiedClaimsState(
      {final List<int>? insuranceIds,
      final DateTime? createDateFrom,
      final DateTime? createDateTo,
      final ClaimStatusType? status,
      final String? riskType}) = _$FilterSimplifiedClaimsStateImpl;

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
  @JsonKey(ignore: true)
  _$$FilterSimplifiedClaimsStateImplCopyWith<_$FilterSimplifiedClaimsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
