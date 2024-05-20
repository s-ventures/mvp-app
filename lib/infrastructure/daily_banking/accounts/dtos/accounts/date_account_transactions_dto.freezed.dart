// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_account_transactions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateAccountTransactionsDto _$DateAccountTransactionsDtoFromJson(Map<String, dynamic> json) {
  return _DateAccountTransactionsDto.fromJson(json);
}

/// @nodoc
mixin _$DateAccountTransactionsDto {
  String get date => throw _privateConstructorUsedError;
  List<SimplifiedAccountTransactionDto> get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateAccountTransactionsDtoCopyWith<DateAccountTransactionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateAccountTransactionsDtoCopyWith<$Res> {
  factory $DateAccountTransactionsDtoCopyWith(
          DateAccountTransactionsDto value, $Res Function(DateAccountTransactionsDto) then) =
      _$DateAccountTransactionsDtoCopyWithImpl<$Res, DateAccountTransactionsDto>;
  @useResult
  $Res call({String date, List<SimplifiedAccountTransactionDto> transactions});
}

/// @nodoc
class _$DateAccountTransactionsDtoCopyWithImpl<$Res, $Val extends DateAccountTransactionsDto>
    implements $DateAccountTransactionsDtoCopyWith<$Res> {
  _$DateAccountTransactionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedAccountTransactionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateAccountTransactionsDtoImplCopyWith<$Res>
    implements $DateAccountTransactionsDtoCopyWith<$Res> {
  factory _$$DateAccountTransactionsDtoImplCopyWith(_$DateAccountTransactionsDtoImpl value,
          $Res Function(_$DateAccountTransactionsDtoImpl) then) =
      __$$DateAccountTransactionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<SimplifiedAccountTransactionDto> transactions});
}

/// @nodoc
class __$$DateAccountTransactionsDtoImplCopyWithImpl<$Res>
    extends _$DateAccountTransactionsDtoCopyWithImpl<$Res, _$DateAccountTransactionsDtoImpl>
    implements _$$DateAccountTransactionsDtoImplCopyWith<$Res> {
  __$$DateAccountTransactionsDtoImplCopyWithImpl(_$DateAccountTransactionsDtoImpl _value,
      $Res Function(_$DateAccountTransactionsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? transactions = null,
  }) {
    return _then(_$DateAccountTransactionsDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedAccountTransactionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateAccountTransactionsDtoImpl implements _DateAccountTransactionsDto {
  const _$DateAccountTransactionsDtoImpl(
      {required this.date, required final List<SimplifiedAccountTransactionDto> transactions})
      : _transactions = transactions;

  factory _$DateAccountTransactionsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateAccountTransactionsDtoImplFromJson(json);

  @override
  final String date;
  final List<SimplifiedAccountTransactionDto> _transactions;
  @override
  List<SimplifiedAccountTransactionDto> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'DateAccountTransactionsDto(date: $date, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateAccountTransactionsDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._transactions, _transactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateAccountTransactionsDtoImplCopyWith<_$DateAccountTransactionsDtoImpl> get copyWith =>
      __$$DateAccountTransactionsDtoImplCopyWithImpl<_$DateAccountTransactionsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateAccountTransactionsDtoImplToJson(
      this,
    );
  }
}

abstract class _DateAccountTransactionsDto implements DateAccountTransactionsDto {
  const factory _DateAccountTransactionsDto(
          {required final String date,
          required final List<SimplifiedAccountTransactionDto> transactions}) =
      _$DateAccountTransactionsDtoImpl;

  factory _DateAccountTransactionsDto.fromJson(Map<String, dynamic> json) =
      _$DateAccountTransactionsDtoImpl.fromJson;

  @override
  String get date;
  @override
  List<SimplifiedAccountTransactionDto> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$DateAccountTransactionsDtoImplCopyWith<_$DateAccountTransactionsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
