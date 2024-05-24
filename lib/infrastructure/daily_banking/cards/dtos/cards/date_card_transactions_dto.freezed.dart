// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_card_transactions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateCardTransactionsDto _$DateCardTransactionsDtoFromJson(
    Map<String, dynamic> json) {
  return _DateCardTransactionsDto.fromJson(json);
}

/// @nodoc
mixin _$DateCardTransactionsDto {
  String get date => throw _privateConstructorUsedError;
  List<SimplifiedCardTransactionDto> get transactions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCardTransactionsDtoCopyWith<DateCardTransactionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCardTransactionsDtoCopyWith<$Res> {
  factory $DateCardTransactionsDtoCopyWith(DateCardTransactionsDto value,
          $Res Function(DateCardTransactionsDto) then) =
      _$DateCardTransactionsDtoCopyWithImpl<$Res, DateCardTransactionsDto>;
  @useResult
  $Res call({String date, List<SimplifiedCardTransactionDto> transactions});
}

/// @nodoc
class _$DateCardTransactionsDtoCopyWithImpl<$Res,
        $Val extends DateCardTransactionsDto>
    implements $DateCardTransactionsDtoCopyWith<$Res> {
  _$DateCardTransactionsDtoCopyWithImpl(this._value, this._then);

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
              as List<SimplifiedCardTransactionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateCardTransactionsDtoImplCopyWith<$Res>
    implements $DateCardTransactionsDtoCopyWith<$Res> {
  factory _$$DateCardTransactionsDtoImplCopyWith(
          _$DateCardTransactionsDtoImpl value,
          $Res Function(_$DateCardTransactionsDtoImpl) then) =
      __$$DateCardTransactionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<SimplifiedCardTransactionDto> transactions});
}

/// @nodoc
class __$$DateCardTransactionsDtoImplCopyWithImpl<$Res>
    extends _$DateCardTransactionsDtoCopyWithImpl<$Res,
        _$DateCardTransactionsDtoImpl>
    implements _$$DateCardTransactionsDtoImplCopyWith<$Res> {
  __$$DateCardTransactionsDtoImplCopyWithImpl(
      _$DateCardTransactionsDtoImpl _value,
      $Res Function(_$DateCardTransactionsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? transactions = null,
  }) {
    return _then(_$DateCardTransactionsDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<SimplifiedCardTransactionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateCardTransactionsDtoImpl implements _DateCardTransactionsDto {
  const _$DateCardTransactionsDtoImpl(
      {required this.date,
      required final List<SimplifiedCardTransactionDto> transactions})
      : _transactions = transactions;

  factory _$DateCardTransactionsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateCardTransactionsDtoImplFromJson(json);

  @override
  final String date;
  final List<SimplifiedCardTransactionDto> _transactions;
  @override
  List<SimplifiedCardTransactionDto> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'DateCardTransactionsDto(date: $date, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateCardTransactionsDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateCardTransactionsDtoImplCopyWith<_$DateCardTransactionsDtoImpl>
      get copyWith => __$$DateCardTransactionsDtoImplCopyWithImpl<
          _$DateCardTransactionsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateCardTransactionsDtoImplToJson(
      this,
    );
  }
}

abstract class _DateCardTransactionsDto implements DateCardTransactionsDto {
  const factory _DateCardTransactionsDto(
          {required final String date,
          required final List<SimplifiedCardTransactionDto> transactions}) =
      _$DateCardTransactionsDtoImpl;

  factory _DateCardTransactionsDto.fromJson(Map<String, dynamic> json) =
      _$DateCardTransactionsDtoImpl.fromJson;

  @override
  String get date;
  @override
  List<SimplifiedCardTransactionDto> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$DateCardTransactionsDtoImplCopyWith<_$DateCardTransactionsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
