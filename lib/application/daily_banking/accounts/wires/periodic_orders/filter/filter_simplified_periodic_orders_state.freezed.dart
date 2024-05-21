// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_simplified_periodic_orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterSimplifiedPeriodicOrdersState {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get amountFrom => throw _privateConstructorUsedError;
  double? get amountTo => throw _privateConstructorUsedError;
  PeriodicOrderFrecuencyType? get frecuency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSimplifiedPeriodicOrdersStateCopyWith<FilterSimplifiedPeriodicOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSimplifiedPeriodicOrdersStateCopyWith<$Res> {
  factory $FilterSimplifiedPeriodicOrdersStateCopyWith(FilterSimplifiedPeriodicOrdersState value,
          $Res Function(FilterSimplifiedPeriodicOrdersState) then) =
      _$FilterSimplifiedPeriodicOrdersStateCopyWithImpl<$Res, FilterSimplifiedPeriodicOrdersState>;
  @useResult
  $Res call(
      {DateTime? startDate,
      DateTime? endDate,
      double? amountFrom,
      double? amountTo,
      PeriodicOrderFrecuencyType? frecuency});
}

/// @nodoc
class _$FilterSimplifiedPeriodicOrdersStateCopyWithImpl<$Res,
        $Val extends FilterSimplifiedPeriodicOrdersState>
    implements $FilterSimplifiedPeriodicOrdersStateCopyWith<$Res> {
  _$FilterSimplifiedPeriodicOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
    Object? frecuency = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      frecuency: freezed == frecuency
          ? _value.frecuency
          : frecuency // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderFrecuencyType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSimplifiedPeriodicOrdersStateImplCopyWith<$Res>
    implements $FilterSimplifiedPeriodicOrdersStateCopyWith<$Res> {
  factory _$$FilterSimplifiedPeriodicOrdersStateImplCopyWith(
          _$FilterSimplifiedPeriodicOrdersStateImpl value,
          $Res Function(_$FilterSimplifiedPeriodicOrdersStateImpl) then) =
      __$$FilterSimplifiedPeriodicOrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startDate,
      DateTime? endDate,
      double? amountFrom,
      double? amountTo,
      PeriodicOrderFrecuencyType? frecuency});
}

/// @nodoc
class __$$FilterSimplifiedPeriodicOrdersStateImplCopyWithImpl<$Res>
    extends _$FilterSimplifiedPeriodicOrdersStateCopyWithImpl<$Res,
        _$FilterSimplifiedPeriodicOrdersStateImpl>
    implements _$$FilterSimplifiedPeriodicOrdersStateImplCopyWith<$Res> {
  __$$FilterSimplifiedPeriodicOrdersStateImplCopyWithImpl(
      _$FilterSimplifiedPeriodicOrdersStateImpl _value,
      $Res Function(_$FilterSimplifiedPeriodicOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
    Object? frecuency = freezed,
  }) {
    return _then(_$FilterSimplifiedPeriodicOrdersStateImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      frecuency: freezed == frecuency
          ? _value.frecuency
          : frecuency // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderFrecuencyType?,
    ));
  }
}

/// @nodoc

class _$FilterSimplifiedPeriodicOrdersStateImpl implements _FilterSimplifiedPeriodicOrdersState {
  const _$FilterSimplifiedPeriodicOrdersStateImpl(
      {this.startDate, this.endDate, this.amountFrom, this.amountTo, this.frecuency});

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? amountFrom;
  @override
  final double? amountTo;
  @override
  final PeriodicOrderFrecuencyType? frecuency;

  @override
  String toString() {
    return 'FilterSimplifiedPeriodicOrdersState(startDate: $startDate, endDate: $endDate, amountFrom: $amountFrom, amountTo: $amountTo, frecuency: $frecuency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSimplifiedPeriodicOrdersStateImpl &&
            (identical(other.startDate, startDate) || other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.amountFrom, amountFrom) || other.amountFrom == amountFrom) &&
            (identical(other.amountTo, amountTo) || other.amountTo == amountTo) &&
            (identical(other.frecuency, frecuency) || other.frecuency == frecuency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, amountFrom, amountTo, frecuency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSimplifiedPeriodicOrdersStateImplCopyWith<_$FilterSimplifiedPeriodicOrdersStateImpl>
      get copyWith => __$$FilterSimplifiedPeriodicOrdersStateImplCopyWithImpl<
          _$FilterSimplifiedPeriodicOrdersStateImpl>(this, _$identity);
}

abstract class _FilterSimplifiedPeriodicOrdersState implements FilterSimplifiedPeriodicOrdersState {
  const factory _FilterSimplifiedPeriodicOrdersState(
      {final DateTime? startDate,
      final DateTime? endDate,
      final double? amountFrom,
      final double? amountTo,
      final PeriodicOrderFrecuencyType? frecuency}) = _$FilterSimplifiedPeriodicOrdersStateImpl;

  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get amountFrom;
  @override
  double? get amountTo;
  @override
  PeriodicOrderFrecuencyType? get frecuency;
  @override
  @JsonKey(ignore: true)
  _$$FilterSimplifiedPeriodicOrdersStateImplCopyWith<_$FilterSimplifiedPeriodicOrdersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
