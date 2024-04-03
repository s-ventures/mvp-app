// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimplifiedAccountDto _$SimplifiedAccountDtoFromJson(Map<String, dynamic> json) {
  return _SimplifiedAccountDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedAccountDto {
  int get accountId => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  AccountStatusDto get status => throw _privateConstructorUsedError;
  String get createDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  AccountBalanceDto get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedAccountDtoCopyWith<SimplifiedAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedAccountDtoCopyWith<$Res> {
  factory $SimplifiedAccountDtoCopyWith(SimplifiedAccountDto value,
          $Res Function(SimplifiedAccountDto) then) =
      _$SimplifiedAccountDtoCopyWithImpl<$Res, SimplifiedAccountDto>;
  @useResult
  $Res call(
      {int accountId,
      String entity,
      String number,
      AccountStatusDto status,
      String createDate,
      String currencyCode,
      AccountBalanceDto balance});

  $AccountBalanceDtoCopyWith<$Res> get balance;
}

/// @nodoc
class _$SimplifiedAccountDtoCopyWithImpl<$Res,
        $Val extends SimplifiedAccountDto>
    implements $SimplifiedAccountDtoCopyWith<$Res> {
  _$SimplifiedAccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? entity = null,
    Object? number = null,
    Object? status = null,
    Object? createDate = null,
    Object? currencyCode = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatusDto,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalanceDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceDtoCopyWith<$Res> get balance {
    return $AccountBalanceDtoCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimplifiedAccountDtoImplCopyWith<$Res>
    implements $SimplifiedAccountDtoCopyWith<$Res> {
  factory _$$SimplifiedAccountDtoImplCopyWith(_$SimplifiedAccountDtoImpl value,
          $Res Function(_$SimplifiedAccountDtoImpl) then) =
      __$$SimplifiedAccountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountId,
      String entity,
      String number,
      AccountStatusDto status,
      String createDate,
      String currencyCode,
      AccountBalanceDto balance});

  @override
  $AccountBalanceDtoCopyWith<$Res> get balance;
}

/// @nodoc
class __$$SimplifiedAccountDtoImplCopyWithImpl<$Res>
    extends _$SimplifiedAccountDtoCopyWithImpl<$Res, _$SimplifiedAccountDtoImpl>
    implements _$$SimplifiedAccountDtoImplCopyWith<$Res> {
  __$$SimplifiedAccountDtoImplCopyWithImpl(_$SimplifiedAccountDtoImpl _value,
      $Res Function(_$SimplifiedAccountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? entity = null,
    Object? number = null,
    Object? status = null,
    Object? createDate = null,
    Object? currencyCode = null,
    Object? balance = null,
  }) {
    return _then(_$SimplifiedAccountDtoImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatusDto,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalanceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimplifiedAccountDtoImpl implements _SimplifiedAccountDto {
  const _$SimplifiedAccountDtoImpl(
      {required this.accountId,
      required this.entity,
      required this.number,
      required this.status,
      required this.createDate,
      required this.currencyCode,
      required this.balance});

  factory _$SimplifiedAccountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimplifiedAccountDtoImplFromJson(json);

  @override
  final int accountId;
  @override
  final String entity;
  @override
  final String number;
  @override
  final AccountStatusDto status;
  @override
  final String createDate;
  @override
  final String currencyCode;
  @override
  final AccountBalanceDto balance;

  @override
  String toString() {
    return 'SimplifiedAccountDto(accountId: $accountId, entity: $entity, number: $number, status: $status, createDate: $createDate, currencyCode: $currencyCode, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedAccountDtoImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, entity, number,
      status, createDate, currencyCode, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedAccountDtoImplCopyWith<_$SimplifiedAccountDtoImpl>
      get copyWith =>
          __$$SimplifiedAccountDtoImplCopyWithImpl<_$SimplifiedAccountDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimplifiedAccountDtoImplToJson(
      this,
    );
  }
}

abstract class _SimplifiedAccountDto implements SimplifiedAccountDto {
  const factory _SimplifiedAccountDto(
      {required final int accountId,
      required final String entity,
      required final String number,
      required final AccountStatusDto status,
      required final String createDate,
      required final String currencyCode,
      required final AccountBalanceDto balance}) = _$SimplifiedAccountDtoImpl;

  factory _SimplifiedAccountDto.fromJson(Map<String, dynamic> json) =
      _$SimplifiedAccountDtoImpl.fromJson;

  @override
  int get accountId;
  @override
  String get entity;
  @override
  String get number;
  @override
  AccountStatusDto get status;
  @override
  String get createDate;
  @override
  String get currencyCode;
  @override
  AccountBalanceDto get balance;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedAccountDtoImplCopyWith<_$SimplifiedAccountDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
