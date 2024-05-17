// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_simplified_sent_transfers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterSimplifiedSentTransfersState {
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int? get amountFrom => throw _privateConstructorUsedError;
  int? get amountTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSimplifiedSentTransfersStateCopyWith<FilterSimplifiedSentTransfersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSimplifiedSentTransfersStateCopyWith<$Res> {
  factory $FilterSimplifiedSentTransfersStateCopyWith(FilterSimplifiedSentTransfersState value,
          $Res Function(FilterSimplifiedSentTransfersState) then) =
      _$FilterSimplifiedSentTransfersStateCopyWithImpl<$Res, FilterSimplifiedSentTransfersState>;
  @useResult
  $Res call({DateTime? startDate, DateTime? endDate, int? amountFrom, int? amountTo});
}

/// @nodoc
class _$FilterSimplifiedSentTransfersStateCopyWithImpl<$Res,
        $Val extends FilterSimplifiedSentTransfersState>
    implements $FilterSimplifiedSentTransfersStateCopyWith<$Res> {
  _$FilterSimplifiedSentTransfersStateCopyWithImpl(this._value, this._then);

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
              as int?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSimplifiedSentTransfersStateImplCopyWith<$Res>
    implements $FilterSimplifiedSentTransfersStateCopyWith<$Res> {
  factory _$$FilterSimplifiedSentTransfersStateImplCopyWith(
          _$FilterSimplifiedSentTransfersStateImpl value,
          $Res Function(_$FilterSimplifiedSentTransfersStateImpl) then) =
      __$$FilterSimplifiedSentTransfersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? startDate, DateTime? endDate, int? amountFrom, int? amountTo});
}

/// @nodoc
class __$$FilterSimplifiedSentTransfersStateImplCopyWithImpl<$Res>
    extends _$FilterSimplifiedSentTransfersStateCopyWithImpl<$Res,
        _$FilterSimplifiedSentTransfersStateImpl>
    implements _$$FilterSimplifiedSentTransfersStateImplCopyWith<$Res> {
  __$$FilterSimplifiedSentTransfersStateImplCopyWithImpl(
      _$FilterSimplifiedSentTransfersStateImpl _value,
      $Res Function(_$FilterSimplifiedSentTransfersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
  }) {
    return _then(_$FilterSimplifiedSentTransfersStateImpl(
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
              as int?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FilterSimplifiedSentTransfersStateImpl implements _FilterSimplifiedSentTransfersState {
  const _$FilterSimplifiedSentTransfersStateImpl(
      {this.startDate, this.endDate, this.amountFrom, this.amountTo});

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final int? amountFrom;
  @override
  final int? amountTo;

  @override
  String toString() {
    return 'FilterSimplifiedSentTransfersState(startDate: $startDate, endDate: $endDate, amountFrom: $amountFrom, amountTo: $amountTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSimplifiedSentTransfersStateImpl &&
            (identical(other.startDate, startDate) || other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.amountFrom, amountFrom) || other.amountFrom == amountFrom) &&
            (identical(other.amountTo, amountTo) || other.amountTo == amountTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, amountFrom, amountTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSimplifiedSentTransfersStateImplCopyWith<_$FilterSimplifiedSentTransfersStateImpl>
      get copyWith => __$$FilterSimplifiedSentTransfersStateImplCopyWithImpl<
          _$FilterSimplifiedSentTransfersStateImpl>(this, _$identity);
}

abstract class _FilterSimplifiedSentTransfersState implements FilterSimplifiedSentTransfersState {
  const factory _FilterSimplifiedSentTransfersState(
      {final DateTime? startDate,
      final DateTime? endDate,
      final int? amountFrom,
      final int? amountTo}) = _$FilterSimplifiedSentTransfersStateImpl;

  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  int? get amountFrom;
  @override
  int? get amountTo;
  @override
  @JsonKey(ignore: true)
  _$$FilterSimplifiedSentTransfersStateImplCopyWith<_$FilterSimplifiedSentTransfersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
