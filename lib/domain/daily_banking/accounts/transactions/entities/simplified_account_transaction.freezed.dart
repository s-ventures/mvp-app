// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_account_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedAccountTransaction {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get accountId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get endBalance => throw _privateConstructorUsedError;
  AccountTransactionType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedAccountTransactionCopyWith<SimplifiedAccountTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedAccountTransactionCopyWith<$Res> {
  factory $SimplifiedAccountTransactionCopyWith(
          SimplifiedAccountTransaction value,
          $Res Function(SimplifiedAccountTransaction) then) =
      _$SimplifiedAccountTransactionCopyWithImpl<$Res,
          SimplifiedAccountTransaction>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId accountId,
      String category,
      String description,
      DateTime date,
      double amount,
      double endBalance,
      AccountTransactionType type});
}

/// @nodoc
class _$SimplifiedAccountTransactionCopyWithImpl<$Res,
        $Val extends SimplifiedAccountTransaction>
    implements $SimplifiedAccountTransactionCopyWith<$Res> {
  _$SimplifiedAccountTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? category = null,
    Object? description = null,
    Object? date = null,
    Object? amount = null,
    Object? endBalance = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      endBalance: null == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTransactionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedAccountTransactionImplCopyWith<$Res>
    implements $SimplifiedAccountTransactionCopyWith<$Res> {
  factory _$$SimplifiedAccountTransactionImplCopyWith(
          _$SimplifiedAccountTransactionImpl value,
          $Res Function(_$SimplifiedAccountTransactionImpl) then) =
      __$$SimplifiedAccountTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId accountId,
      String category,
      String description,
      DateTime date,
      double amount,
      double endBalance,
      AccountTransactionType type});
}

/// @nodoc
class __$$SimplifiedAccountTransactionImplCopyWithImpl<$Res>
    extends _$SimplifiedAccountTransactionCopyWithImpl<$Res,
        _$SimplifiedAccountTransactionImpl>
    implements _$$SimplifiedAccountTransactionImplCopyWith<$Res> {
  __$$SimplifiedAccountTransactionImplCopyWithImpl(
      _$SimplifiedAccountTransactionImpl _value,
      $Res Function(_$SimplifiedAccountTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? category = null,
    Object? description = null,
    Object? date = null,
    Object? amount = null,
    Object? endBalance = null,
    Object? type = null,
  }) {
    return _then(_$SimplifiedAccountTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      endBalance: null == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTransactionType,
    ));
  }
}

/// @nodoc

class _$SimplifiedAccountTransactionImpl
    implements _SimplifiedAccountTransaction {
  const _$SimplifiedAccountTransactionImpl(
      {required this.id,
      required this.accountId,
      required this.category,
      required this.description,
      required this.date,
      required this.amount,
      required this.endBalance,
      required this.type});

  @override
  final UniqueId id;
  @override
  final UniqueId accountId;
  @override
  final String category;
  @override
  final String description;
  @override
  final DateTime date;
  @override
  final double amount;
  @override
  final double endBalance;
  @override
  final AccountTransactionType type;

  @override
  String toString() {
    return 'SimplifiedAccountTransaction(id: $id, accountId: $accountId, category: $category, description: $description, date: $date, amount: $amount, endBalance: $endBalance, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedAccountTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.endBalance, endBalance) ||
                other.endBalance == endBalance) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, category,
      description, date, amount, endBalance, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedAccountTransactionImplCopyWith<
          _$SimplifiedAccountTransactionImpl>
      get copyWith => __$$SimplifiedAccountTransactionImplCopyWithImpl<
          _$SimplifiedAccountTransactionImpl>(this, _$identity);
}

abstract class _SimplifiedAccountTransaction
    implements SimplifiedAccountTransaction {
  const factory _SimplifiedAccountTransaction(
          {required final UniqueId id,
          required final UniqueId accountId,
          required final String category,
          required final String description,
          required final DateTime date,
          required final double amount,
          required final double endBalance,
          required final AccountTransactionType type}) =
      _$SimplifiedAccountTransactionImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get accountId;
  @override
  String get category;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  double get amount;
  @override
  double get endBalance;
  @override
  AccountTransactionType get type;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedAccountTransactionImplCopyWith<
          _$SimplifiedAccountTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
