// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claims_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClaimsFilter {
  int? get claimId => throw _privateConstructorUsedError;
  List<int>? get insuranceIds => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String? get dossier => throw _privateConstructorUsedError;
  DateTime? get createDateFrom => throw _privateConstructorUsedError;
  DateTime? get createDateTo => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get riskType => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get riskLocation => throw _privateConstructorUsedError;
  DateTime? get processStartDateFrom => throw _privateConstructorUsedError;
  DateTime? get processStartDateTo => throw _privateConstructorUsedError;
  DateTime? get processEndDateFrom => throw _privateConstructorUsedError;
  DateTime? get processEndDateTo => throw _privateConstructorUsedError;
  String? get agentName => throw _privateConstructorUsedError;
  String? get agentEmail => throw _privateConstructorUsedError;
  String? get agentTelephone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClaimsFilterCopyWith<ClaimsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimsFilterCopyWith<$Res> {
  factory $ClaimsFilterCopyWith(
          ClaimsFilter value, $Res Function(ClaimsFilter) then) =
      _$ClaimsFilterCopyWithImpl<$Res, ClaimsFilter>;
  @useResult
  $Res call(
      {int? claimId,
      List<int>? insuranceIds,
      int? year,
      String? dossier,
      DateTime? createDateFrom,
      DateTime? createDateTo,
      String? status,
      String? riskType,
      String? reason,
      String? riskLocation,
      DateTime? processStartDateFrom,
      DateTime? processStartDateTo,
      DateTime? processEndDateFrom,
      DateTime? processEndDateTo,
      String? agentName,
      String? agentEmail,
      String? agentTelephone});
}

/// @nodoc
class _$ClaimsFilterCopyWithImpl<$Res, $Val extends ClaimsFilter>
    implements $ClaimsFilterCopyWith<$Res> {
  _$ClaimsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimId = freezed,
    Object? insuranceIds = freezed,
    Object? year = freezed,
    Object? dossier = freezed,
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
    Object? status = freezed,
    Object? riskType = freezed,
    Object? reason = freezed,
    Object? riskLocation = freezed,
    Object? processStartDateFrom = freezed,
    Object? processStartDateTo = freezed,
    Object? processEndDateFrom = freezed,
    Object? processEndDateTo = freezed,
    Object? agentName = freezed,
    Object? agentEmail = freezed,
    Object? agentTelephone = freezed,
  }) {
    return _then(_value.copyWith(
      claimId: freezed == claimId
          ? _value.claimId
          : claimId // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceIds: freezed == insuranceIds
          ? _value.insuranceIds
          : insuranceIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      dossier: freezed == dossier
          ? _value.dossier
          : dossier // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      riskType: freezed == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      riskLocation: freezed == riskLocation
          ? _value.riskLocation
          : riskLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      processStartDateFrom: freezed == processStartDateFrom
          ? _value.processStartDateFrom
          : processStartDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processStartDateTo: freezed == processStartDateTo
          ? _value.processStartDateTo
          : processStartDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processEndDateFrom: freezed == processEndDateFrom
          ? _value.processEndDateFrom
          : processEndDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processEndDateTo: freezed == processEndDateTo
          ? _value.processEndDateTo
          : processEndDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      agentEmail: freezed == agentEmail
          ? _value.agentEmail
          : agentEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      agentTelephone: freezed == agentTelephone
          ? _value.agentTelephone
          : agentTelephone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimsFilterImplCopyWith<$Res>
    implements $ClaimsFilterCopyWith<$Res> {
  factory _$$ClaimsFilterImplCopyWith(
          _$ClaimsFilterImpl value, $Res Function(_$ClaimsFilterImpl) then) =
      __$$ClaimsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? claimId,
      List<int>? insuranceIds,
      int? year,
      String? dossier,
      DateTime? createDateFrom,
      DateTime? createDateTo,
      String? status,
      String? riskType,
      String? reason,
      String? riskLocation,
      DateTime? processStartDateFrom,
      DateTime? processStartDateTo,
      DateTime? processEndDateFrom,
      DateTime? processEndDateTo,
      String? agentName,
      String? agentEmail,
      String? agentTelephone});
}

/// @nodoc
class __$$ClaimsFilterImplCopyWithImpl<$Res>
    extends _$ClaimsFilterCopyWithImpl<$Res, _$ClaimsFilterImpl>
    implements _$$ClaimsFilterImplCopyWith<$Res> {
  __$$ClaimsFilterImplCopyWithImpl(
      _$ClaimsFilterImpl _value, $Res Function(_$ClaimsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimId = freezed,
    Object? insuranceIds = freezed,
    Object? year = freezed,
    Object? dossier = freezed,
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
    Object? status = freezed,
    Object? riskType = freezed,
    Object? reason = freezed,
    Object? riskLocation = freezed,
    Object? processStartDateFrom = freezed,
    Object? processStartDateTo = freezed,
    Object? processEndDateFrom = freezed,
    Object? processEndDateTo = freezed,
    Object? agentName = freezed,
    Object? agentEmail = freezed,
    Object? agentTelephone = freezed,
  }) {
    return _then(_$ClaimsFilterImpl(
      claimId: freezed == claimId
          ? _value.claimId
          : claimId // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceIds: freezed == insuranceIds
          ? _value._insuranceIds
          : insuranceIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      dossier: freezed == dossier
          ? _value.dossier
          : dossier // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      riskType: freezed == riskType
          ? _value.riskType
          : riskType // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      riskLocation: freezed == riskLocation
          ? _value.riskLocation
          : riskLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      processStartDateFrom: freezed == processStartDateFrom
          ? _value.processStartDateFrom
          : processStartDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processStartDateTo: freezed == processStartDateTo
          ? _value.processStartDateTo
          : processStartDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processEndDateFrom: freezed == processEndDateFrom
          ? _value.processEndDateFrom
          : processEndDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processEndDateTo: freezed == processEndDateTo
          ? _value.processEndDateTo
          : processEndDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      agentEmail: freezed == agentEmail
          ? _value.agentEmail
          : agentEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      agentTelephone: freezed == agentTelephone
          ? _value.agentTelephone
          : agentTelephone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClaimsFilterImpl implements _ClaimsFilter {
  const _$ClaimsFilterImpl(
      {this.claimId,
      final List<int>? insuranceIds,
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
      this.agentTelephone})
      : _insuranceIds = insuranceIds;

  @override
  final int? claimId;
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
  final int? year;
  @override
  final String? dossier;
  @override
  final DateTime? createDateFrom;
  @override
  final DateTime? createDateTo;
  @override
  final String? status;
  @override
  final String? riskType;
  @override
  final String? reason;
  @override
  final String? riskLocation;
  @override
  final DateTime? processStartDateFrom;
  @override
  final DateTime? processStartDateTo;
  @override
  final DateTime? processEndDateFrom;
  @override
  final DateTime? processEndDateTo;
  @override
  final String? agentName;
  @override
  final String? agentEmail;
  @override
  final String? agentTelephone;

  @override
  String toString() {
    return 'ClaimsFilter(claimId: $claimId, insuranceIds: $insuranceIds, year: $year, dossier: $dossier, createDateFrom: $createDateFrom, createDateTo: $createDateTo, status: $status, riskType: $riskType, reason: $reason, riskLocation: $riskLocation, processStartDateFrom: $processStartDateFrom, processStartDateTo: $processStartDateTo, processEndDateFrom: $processEndDateFrom, processEndDateTo: $processEndDateTo, agentName: $agentName, agentEmail: $agentEmail, agentTelephone: $agentTelephone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimsFilterImpl &&
            (identical(other.claimId, claimId) || other.claimId == claimId) &&
            const DeepCollectionEquality()
                .equals(other._insuranceIds, _insuranceIds) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.dossier, dossier) || other.dossier == dossier) &&
            (identical(other.createDateFrom, createDateFrom) ||
                other.createDateFrom == createDateFrom) &&
            (identical(other.createDateTo, createDateTo) ||
                other.createDateTo == createDateTo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.riskType, riskType) ||
                other.riskType == riskType) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.riskLocation, riskLocation) ||
                other.riskLocation == riskLocation) &&
            (identical(other.processStartDateFrom, processStartDateFrom) ||
                other.processStartDateFrom == processStartDateFrom) &&
            (identical(other.processStartDateTo, processStartDateTo) ||
                other.processStartDateTo == processStartDateTo) &&
            (identical(other.processEndDateFrom, processEndDateFrom) ||
                other.processEndDateFrom == processEndDateFrom) &&
            (identical(other.processEndDateTo, processEndDateTo) ||
                other.processEndDateTo == processEndDateTo) &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.agentEmail, agentEmail) ||
                other.agentEmail == agentEmail) &&
            (identical(other.agentTelephone, agentTelephone) ||
                other.agentTelephone == agentTelephone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      claimId,
      const DeepCollectionEquality().hash(_insuranceIds),
      year,
      dossier,
      createDateFrom,
      createDateTo,
      status,
      riskType,
      reason,
      riskLocation,
      processStartDateFrom,
      processStartDateTo,
      processEndDateFrom,
      processEndDateTo,
      agentName,
      agentEmail,
      agentTelephone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimsFilterImplCopyWith<_$ClaimsFilterImpl> get copyWith =>
      __$$ClaimsFilterImplCopyWithImpl<_$ClaimsFilterImpl>(this, _$identity);
}

abstract class _ClaimsFilter implements ClaimsFilter {
  const factory _ClaimsFilter(
      {final int? claimId,
      final List<int>? insuranceIds,
      final int? year,
      final String? dossier,
      final DateTime? createDateFrom,
      final DateTime? createDateTo,
      final String? status,
      final String? riskType,
      final String? reason,
      final String? riskLocation,
      final DateTime? processStartDateFrom,
      final DateTime? processStartDateTo,
      final DateTime? processEndDateFrom,
      final DateTime? processEndDateTo,
      final String? agentName,
      final String? agentEmail,
      final String? agentTelephone}) = _$ClaimsFilterImpl;

  @override
  int? get claimId;
  @override
  List<int>? get insuranceIds;
  @override
  int? get year;
  @override
  String? get dossier;
  @override
  DateTime? get createDateFrom;
  @override
  DateTime? get createDateTo;
  @override
  String? get status;
  @override
  String? get riskType;
  @override
  String? get reason;
  @override
  String? get riskLocation;
  @override
  DateTime? get processStartDateFrom;
  @override
  DateTime? get processStartDateTo;
  @override
  DateTime? get processEndDateFrom;
  @override
  DateTime? get processEndDateTo;
  @override
  String? get agentName;
  @override
  String? get agentEmail;
  @override
  String? get agentTelephone;
  @override
  @JsonKey(ignore: true)
  _$$ClaimsFilterImplCopyWith<_$ClaimsFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
