// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_card_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedCardTransaction {
  UniqueId get id => throw _privateConstructorUsedError;
  String get concept => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedCardTransactionCopyWith<SimplifiedCardTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedCardTransactionCopyWith<$Res> {
  factory $SimplifiedCardTransactionCopyWith(
          SimplifiedCardTransaction value, $Res Function(SimplifiedCardTransaction) then) =
      _$SimplifiedCardTransactionCopyWithImpl<$Res, SimplifiedCardTransaction>;
  @useResult
  $Res call({UniqueId id, String concept, DateTime date, double amount});
}

/// @nodoc
class _$SimplifiedCardTransactionCopyWithImpl<$Res, $Val extends SimplifiedCardTransaction>
    implements $SimplifiedCardTransactionCopyWith<$Res> {
  _$SimplifiedCardTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? concept = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedCardTransactionImplCopyWith<$Res>
    implements $SimplifiedCardTransactionCopyWith<$Res> {
  factory _$$SimplifiedCardTransactionImplCopyWith(_$SimplifiedCardTransactionImpl value,
          $Res Function(_$SimplifiedCardTransactionImpl) then) =
      __$$SimplifiedCardTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, String concept, DateTime date, double amount});
}

/// @nodoc
class __$$SimplifiedCardTransactionImplCopyWithImpl<$Res>
    extends _$SimplifiedCardTransactionCopyWithImpl<$Res, _$SimplifiedCardTransactionImpl>
    implements _$$SimplifiedCardTransactionImplCopyWith<$Res> {
  __$$SimplifiedCardTransactionImplCopyWithImpl(
      _$SimplifiedCardTransactionImpl _value, $Res Function(_$SimplifiedCardTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? concept = null,
    Object? date = null,
    Object? amount = null,
  }) {
    return _then(_$SimplifiedCardTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SimplifiedCardTransactionImpl implements _SimplifiedCardTransaction {
  const _$SimplifiedCardTransactionImpl(
      {required this.id, required this.concept, required this.date, required this.amount});

  @override
  final UniqueId id;
  @override
  final String concept;
  @override
  final DateTime date;
  @override
  final double amount;

  @override
  String toString() {
    return 'SimplifiedCardTransaction(id: $id, concept: $concept, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, concept, date, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedCardTransactionImplCopyWith<_$SimplifiedCardTransactionImpl> get copyWith =>
      __$$SimplifiedCardTransactionImplCopyWithImpl<_$SimplifiedCardTransactionImpl>(
          this, _$identity);
}

abstract class _SimplifiedCardTransaction implements SimplifiedCardTransaction {
  const factory _SimplifiedCardTransaction(
      {required final UniqueId id,
      required final String concept,
      required final DateTime date,
      required final double amount}) = _$SimplifiedCardTransactionImpl;

  @override
  UniqueId get id;
  @override
  String get concept;
  @override
  DateTime get date;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardTransactionImplCopyWith<_$SimplifiedCardTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
