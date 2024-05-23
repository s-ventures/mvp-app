// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sent_transfers_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SentTransfersFilter {
  DateTime? get orderDateFrom => throw _privateConstructorUsedError;
  DateTime? get orderDateTo => throw _privateConstructorUsedError;
  int? get settlementAmountFrom => throw _privateConstructorUsedError;
  int? get settlementAmountTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SentTransfersFilterCopyWith<SentTransfersFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentTransfersFilterCopyWith<$Res> {
  factory $SentTransfersFilterCopyWith(
          SentTransfersFilter value, $Res Function(SentTransfersFilter) then) =
      _$SentTransfersFilterCopyWithImpl<$Res, SentTransfersFilter>;
  @useResult
  $Res call(
      {DateTime? orderDateFrom,
      DateTime? orderDateTo,
      int? settlementAmountFrom,
      int? settlementAmountTo});
}

/// @nodoc
class _$SentTransfersFilterCopyWithImpl<$Res, $Val extends SentTransfersFilter>
    implements $SentTransfersFilterCopyWith<$Res> {
  _$SentTransfersFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDateFrom = freezed,
    Object? orderDateTo = freezed,
    Object? settlementAmountFrom = freezed,
    Object? settlementAmountTo = freezed,
  }) {
    return _then(_value.copyWith(
      orderDateFrom: freezed == orderDateFrom
          ? _value.orderDateFrom
          : orderDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderDateTo: freezed == orderDateTo
          ? _value.orderDateTo
          : orderDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      settlementAmountFrom: freezed == settlementAmountFrom
          ? _value.settlementAmountFrom
          : settlementAmountFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      settlementAmountTo: freezed == settlementAmountTo
          ? _value.settlementAmountTo
          : settlementAmountTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentTransfersFilterImplCopyWith<$Res>
    implements $SentTransfersFilterCopyWith<$Res> {
  factory _$$SentTransfersFilterImplCopyWith(_$SentTransfersFilterImpl value,
          $Res Function(_$SentTransfersFilterImpl) then) =
      __$$SentTransfersFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? orderDateFrom,
      DateTime? orderDateTo,
      int? settlementAmountFrom,
      int? settlementAmountTo});
}

/// @nodoc
class __$$SentTransfersFilterImplCopyWithImpl<$Res>
    extends _$SentTransfersFilterCopyWithImpl<$Res, _$SentTransfersFilterImpl>
    implements _$$SentTransfersFilterImplCopyWith<$Res> {
  __$$SentTransfersFilterImplCopyWithImpl(_$SentTransfersFilterImpl _value,
      $Res Function(_$SentTransfersFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDateFrom = freezed,
    Object? orderDateTo = freezed,
    Object? settlementAmountFrom = freezed,
    Object? settlementAmountTo = freezed,
  }) {
    return _then(_$SentTransfersFilterImpl(
      orderDateFrom: freezed == orderDateFrom
          ? _value.orderDateFrom
          : orderDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderDateTo: freezed == orderDateTo
          ? _value.orderDateTo
          : orderDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      settlementAmountFrom: freezed == settlementAmountFrom
          ? _value.settlementAmountFrom
          : settlementAmountFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      settlementAmountTo: freezed == settlementAmountTo
          ? _value.settlementAmountTo
          : settlementAmountTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SentTransfersFilterImpl implements _SentTransfersFilter {
  const _$SentTransfersFilterImpl(
      {this.orderDateFrom,
      this.orderDateTo,
      this.settlementAmountFrom,
      this.settlementAmountTo});

  @override
  final DateTime? orderDateFrom;
  @override
  final DateTime? orderDateTo;
  @override
  final int? settlementAmountFrom;
  @override
  final int? settlementAmountTo;

  @override
  String toString() {
    return 'SentTransfersFilter(orderDateFrom: $orderDateFrom, orderDateTo: $orderDateTo, settlementAmountFrom: $settlementAmountFrom, settlementAmountTo: $settlementAmountTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentTransfersFilterImpl &&
            (identical(other.orderDateFrom, orderDateFrom) ||
                other.orderDateFrom == orderDateFrom) &&
            (identical(other.orderDateTo, orderDateTo) ||
                other.orderDateTo == orderDateTo) &&
            (identical(other.settlementAmountFrom, settlementAmountFrom) ||
                other.settlementAmountFrom == settlementAmountFrom) &&
            (identical(other.settlementAmountTo, settlementAmountTo) ||
                other.settlementAmountTo == settlementAmountTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDateFrom, orderDateTo,
      settlementAmountFrom, settlementAmountTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentTransfersFilterImplCopyWith<_$SentTransfersFilterImpl> get copyWith =>
      __$$SentTransfersFilterImplCopyWithImpl<_$SentTransfersFilterImpl>(
          this, _$identity);
}

abstract class _SentTransfersFilter implements SentTransfersFilter {
  const factory _SentTransfersFilter(
      {final DateTime? orderDateFrom,
      final DateTime? orderDateTo,
      final int? settlementAmountFrom,
      final int? settlementAmountTo}) = _$SentTransfersFilterImpl;

  @override
  DateTime? get orderDateFrom;
  @override
  DateTime? get orderDateTo;
  @override
  int? get settlementAmountFrom;
  @override
  int? get settlementAmountTo;
  @override
  @JsonKey(ignore: true)
  _$$SentTransfersFilterImplCopyWith<_$SentTransfersFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
