// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailedAccountDto _$DetailedAccountDtoFromJson(Map<String, dynamic> json) {
  return _DetailedAccountDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedAccountDto {
  int get accountId => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  AccountStatusDto get status => throw _privateConstructorUsedError;
  String get createDate => throw _privateConstructorUsedError;
  String get activateDate => throw _privateConstructorUsedError;
  String? get closureDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  AccountDispositionTypeDto get dispositionType =>
      throw _privateConstructorUsedError;
  String get dispositionNumber => throw _privateConstructorUsedError;
  String get lastOperationDate => throw _privateConstructorUsedError;
  AccountBalanceDto get balance => throw _privateConstructorUsedError;
  String? get accountHolder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedAccountDtoCopyWith<DetailedAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountDtoCopyWith<$Res> {
  factory $DetailedAccountDtoCopyWith(
          DetailedAccountDto value, $Res Function(DetailedAccountDto) then) =
      _$DetailedAccountDtoCopyWithImpl<$Res, DetailedAccountDto>;
  @useResult
  $Res call(
      {int accountId,
      String entity,
      String branch,
      String number,
      AccountStatusDto status,
      String createDate,
      String activateDate,
      String? closureDate,
      String currencyCode,
      AccountDispositionTypeDto dispositionType,
      String dispositionNumber,
      String lastOperationDate,
      AccountBalanceDto balance,
      String? accountHolder});

  $AccountBalanceDtoCopyWith<$Res> get balance;
}

/// @nodoc
class _$DetailedAccountDtoCopyWithImpl<$Res, $Val extends DetailedAccountDto>
    implements $DetailedAccountDtoCopyWith<$Res> {
  _$DetailedAccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? entity = null,
    Object? branch = null,
    Object? number = null,
    Object? status = null,
    Object? createDate = null,
    Object? activateDate = null,
    Object? closureDate = freezed,
    Object? currencyCode = null,
    Object? dispositionType = null,
    Object? dispositionNumber = null,
    Object? lastOperationDate = null,
    Object? balance = null,
    Object? accountHolder = freezed,
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
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
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
      activateDate: null == activateDate
          ? _value.activateDate
          : activateDate // ignore: cast_nullable_to_non_nullable
              as String,
      closureDate: freezed == closureDate
          ? _value.closureDate
          : closureDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      dispositionType: null == dispositionType
          ? _value.dispositionType
          : dispositionType // ignore: cast_nullable_to_non_nullable
              as AccountDispositionTypeDto,
      dispositionNumber: null == dispositionNumber
          ? _value.dispositionNumber
          : dispositionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastOperationDate: null == lastOperationDate
          ? _value.lastOperationDate
          : lastOperationDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalanceDto,
      accountHolder: freezed == accountHolder
          ? _value.accountHolder
          : accountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$DetailedAccountDtoImplCopyWith<$Res>
    implements $DetailedAccountDtoCopyWith<$Res> {
  factory _$$DetailedAccountDtoImplCopyWith(_$DetailedAccountDtoImpl value,
          $Res Function(_$DetailedAccountDtoImpl) then) =
      __$$DetailedAccountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountId,
      String entity,
      String branch,
      String number,
      AccountStatusDto status,
      String createDate,
      String activateDate,
      String? closureDate,
      String currencyCode,
      AccountDispositionTypeDto dispositionType,
      String dispositionNumber,
      String lastOperationDate,
      AccountBalanceDto balance,
      String? accountHolder});

  @override
  $AccountBalanceDtoCopyWith<$Res> get balance;
}

/// @nodoc
class __$$DetailedAccountDtoImplCopyWithImpl<$Res>
    extends _$DetailedAccountDtoCopyWithImpl<$Res, _$DetailedAccountDtoImpl>
    implements _$$DetailedAccountDtoImplCopyWith<$Res> {
  __$$DetailedAccountDtoImplCopyWithImpl(_$DetailedAccountDtoImpl _value,
      $Res Function(_$DetailedAccountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? entity = null,
    Object? branch = null,
    Object? number = null,
    Object? status = null,
    Object? createDate = null,
    Object? activateDate = null,
    Object? closureDate = freezed,
    Object? currencyCode = null,
    Object? dispositionType = null,
    Object? dispositionNumber = null,
    Object? lastOperationDate = null,
    Object? balance = null,
    Object? accountHolder = freezed,
  }) {
    return _then(_$DetailedAccountDtoImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
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
      activateDate: null == activateDate
          ? _value.activateDate
          : activateDate // ignore: cast_nullable_to_non_nullable
              as String,
      closureDate: freezed == closureDate
          ? _value.closureDate
          : closureDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      dispositionType: null == dispositionType
          ? _value.dispositionType
          : dispositionType // ignore: cast_nullable_to_non_nullable
              as AccountDispositionTypeDto,
      dispositionNumber: null == dispositionNumber
          ? _value.dispositionNumber
          : dispositionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      lastOperationDate: null == lastOperationDate
          ? _value.lastOperationDate
          : lastOperationDate // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalanceDto,
      accountHolder: freezed == accountHolder
          ? _value.accountHolder
          : accountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedAccountDtoImpl implements _DetailedAccountDto {
  const _$DetailedAccountDtoImpl(
      {required this.accountId,
      required this.entity,
      required this.branch,
      required this.number,
      required this.status,
      required this.createDate,
      required this.activateDate,
      required this.closureDate,
      required this.currencyCode,
      required this.dispositionType,
      required this.dispositionNumber,
      required this.lastOperationDate,
      required this.balance,
      required this.accountHolder});

  factory _$DetailedAccountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedAccountDtoImplFromJson(json);

  @override
  final int accountId;
  @override
  final String entity;
  @override
  final String branch;
  @override
  final String number;
  @override
  final AccountStatusDto status;
  @override
  final String createDate;
  @override
  final String activateDate;
  @override
  final String? closureDate;
  @override
  final String currencyCode;
  @override
  final AccountDispositionTypeDto dispositionType;
  @override
  final String dispositionNumber;
  @override
  final String lastOperationDate;
  @override
  final AccountBalanceDto balance;
  @override
  final String? accountHolder;

  @override
  String toString() {
    return 'DetailedAccountDto(accountId: $accountId, entity: $entity, branch: $branch, number: $number, status: $status, createDate: $createDate, activateDate: $activateDate, closureDate: $closureDate, currencyCode: $currencyCode, dispositionType: $dispositionType, dispositionNumber: $dispositionNumber, lastOperationDate: $lastOperationDate, balance: $balance, accountHolder: $accountHolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountDtoImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.activateDate, activateDate) ||
                other.activateDate == activateDate) &&
            (identical(other.closureDate, closureDate) ||
                other.closureDate == closureDate) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.dispositionType, dispositionType) ||
                other.dispositionType == dispositionType) &&
            (identical(other.dispositionNumber, dispositionNumber) ||
                other.dispositionNumber == dispositionNumber) &&
            (identical(other.lastOperationDate, lastOperationDate) ||
                other.lastOperationDate == lastOperationDate) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.accountHolder, accountHolder) ||
                other.accountHolder == accountHolder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountId,
      entity,
      branch,
      number,
      status,
      createDate,
      activateDate,
      closureDate,
      currencyCode,
      dispositionType,
      dispositionNumber,
      lastOperationDate,
      balance,
      accountHolder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountDtoImplCopyWith<_$DetailedAccountDtoImpl> get copyWith =>
      __$$DetailedAccountDtoImplCopyWithImpl<_$DetailedAccountDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedAccountDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedAccountDto implements DetailedAccountDto {
  const factory _DetailedAccountDto(
      {required final int accountId,
      required final String entity,
      required final String branch,
      required final String number,
      required final AccountStatusDto status,
      required final String createDate,
      required final String activateDate,
      required final String? closureDate,
      required final String currencyCode,
      required final AccountDispositionTypeDto dispositionType,
      required final String dispositionNumber,
      required final String lastOperationDate,
      required final AccountBalanceDto balance,
      required final String? accountHolder}) = _$DetailedAccountDtoImpl;

  factory _DetailedAccountDto.fromJson(Map<String, dynamic> json) =
      _$DetailedAccountDtoImpl.fromJson;

  @override
  int get accountId;
  @override
  String get entity;
  @override
  String get branch;
  @override
  String get number;
  @override
  AccountStatusDto get status;
  @override
  String get createDate;
  @override
  String get activateDate;
  @override
  String? get closureDate;
  @override
  String get currencyCode;
  @override
  AccountDispositionTypeDto get dispositionType;
  @override
  String get dispositionNumber;
  @override
  String get lastOperationDate;
  @override
  AccountBalanceDto get balance;
  @override
  String? get accountHolder;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountDtoImplCopyWith<_$DetailedAccountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
