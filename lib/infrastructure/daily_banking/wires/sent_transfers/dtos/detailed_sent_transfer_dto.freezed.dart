// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_sent_transfer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedSentTransferDto _$DetailedSentTransferDtoFromJson(
    Map<String, dynamic> json) {
  return _DetailedSentTransferDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedSentTransferDto {
  SentTransferTypeDto get type => throw _privateConstructorUsedError;
  String? get baasTransferId => throw _privateConstructorUsedError;
  String? get bankOperationCode => throw _privateConstructorUsedError;
  String? get senderBank => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  DateTime? get valueDate => throw _privateConstructorUsedError;
  String get concept => throw _privateConstructorUsedError;
  double? get settlementAmount => throw _privateConstructorUsedError;
  String? get settlementCurrencyCode => throw _privateConstructorUsedError;
  double? get foreignExchange => throw _privateConstructorUsedError;
  double? get exchangeValue => throw _privateConstructorUsedError;
  TransferDetailOfChargesDto? get detailsOfCharges =>
      throw _privateConstructorUsedError;
  double? get instructedAmount => throw _privateConstructorUsedError;
  String? get instructedCurrencyCode => throw _privateConstructorUsedError;
  TransferStatusTypeDto get status => throw _privateConstructorUsedError;
  String? get baasMovementId => throw _privateConstructorUsedError;
  String? get concept2 => throw _privateConstructorUsedError;
  int? get movementId => throw _privateConstructorUsedError;
  DateTime? get executionDate => throw _privateConstructorUsedError;
  String? get senderAccount => throw _privateConstructorUsedError;
  int get sentTransferId => throw _privateConstructorUsedError;
  bool get periodicTransfer => throw _privateConstructorUsedError;
  String? get routingNumber => throw _privateConstructorUsedError;
  String? get beneficiaryBank => throw _privateConstructorUsedError;
  String get beneficiaryAccount => throw _privateConstructorUsedError;
  String get beneficiaryName => throw _privateConstructorUsedError;
  DateTime? get transferDate => throw _privateConstructorUsedError;
  String? get referenceDC => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedSentTransferDtoCopyWith<DetailedSentTransferDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedSentTransferDtoCopyWith<$Res> {
  factory $DetailedSentTransferDtoCopyWith(DetailedSentTransferDto value,
          $Res Function(DetailedSentTransferDto) then) =
      _$DetailedSentTransferDtoCopyWithImpl<$Res, DetailedSentTransferDto>;
  @useResult
  $Res call(
      {SentTransferTypeDto type,
      String? baasTransferId,
      String? bankOperationCode,
      String? senderBank,
      int accountId,
      int customerId,
      DateTime orderDate,
      DateTime? valueDate,
      String concept,
      double? settlementAmount,
      String? settlementCurrencyCode,
      double? foreignExchange,
      double? exchangeValue,
      TransferDetailOfChargesDto? detailsOfCharges,
      double? instructedAmount,
      String? instructedCurrencyCode,
      TransferStatusTypeDto status,
      String? baasMovementId,
      String? concept2,
      int? movementId,
      DateTime? executionDate,
      String? senderAccount,
      int sentTransferId,
      bool periodicTransfer,
      String? routingNumber,
      String? beneficiaryBank,
      String beneficiaryAccount,
      String beneficiaryName,
      DateTime? transferDate,
      String? referenceDC});
}

/// @nodoc
class _$DetailedSentTransferDtoCopyWithImpl<$Res,
        $Val extends DetailedSentTransferDto>
    implements $DetailedSentTransferDtoCopyWith<$Res> {
  _$DetailedSentTransferDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? baasTransferId = freezed,
    Object? bankOperationCode = freezed,
    Object? senderBank = freezed,
    Object? accountId = null,
    Object? customerId = null,
    Object? orderDate = null,
    Object? valueDate = freezed,
    Object? concept = null,
    Object? settlementAmount = freezed,
    Object? settlementCurrencyCode = freezed,
    Object? foreignExchange = freezed,
    Object? exchangeValue = freezed,
    Object? detailsOfCharges = freezed,
    Object? instructedAmount = freezed,
    Object? instructedCurrencyCode = freezed,
    Object? status = null,
    Object? baasMovementId = freezed,
    Object? concept2 = freezed,
    Object? movementId = freezed,
    Object? executionDate = freezed,
    Object? senderAccount = freezed,
    Object? sentTransferId = null,
    Object? periodicTransfer = null,
    Object? routingNumber = freezed,
    Object? beneficiaryBank = freezed,
    Object? beneficiaryAccount = null,
    Object? beneficiaryName = null,
    Object? transferDate = freezed,
    Object? referenceDC = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SentTransferTypeDto,
      baasTransferId: freezed == baasTransferId
          ? _value.baasTransferId
          : baasTransferId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOperationCode: freezed == bankOperationCode
          ? _value.bankOperationCode
          : bankOperationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      senderBank: freezed == senderBank
          ? _value.senderBank
          : senderBank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      settlementAmount: freezed == settlementAmount
          ? _value.settlementAmount
          : settlementAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      settlementCurrencyCode: freezed == settlementCurrencyCode
          ? _value.settlementCurrencyCode
          : settlementCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      foreignExchange: freezed == foreignExchange
          ? _value.foreignExchange
          : foreignExchange // ignore: cast_nullable_to_non_nullable
              as double?,
      exchangeValue: freezed == exchangeValue
          ? _value.exchangeValue
          : exchangeValue // ignore: cast_nullable_to_non_nullable
              as double?,
      detailsOfCharges: freezed == detailsOfCharges
          ? _value.detailsOfCharges
          : detailsOfCharges // ignore: cast_nullable_to_non_nullable
              as TransferDetailOfChargesDto?,
      instructedAmount: freezed == instructedAmount
          ? _value.instructedAmount
          : instructedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      instructedCurrencyCode: freezed == instructedCurrencyCode
          ? _value.instructedCurrencyCode
          : instructedCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransferStatusTypeDto,
      baasMovementId: freezed == baasMovementId
          ? _value.baasMovementId
          : baasMovementId // ignore: cast_nullable_to_non_nullable
              as String?,
      concept2: freezed == concept2
          ? _value.concept2
          : concept2 // ignore: cast_nullable_to_non_nullable
              as String?,
      movementId: freezed == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int?,
      executionDate: freezed == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      senderAccount: freezed == senderAccount
          ? _value.senderAccount
          : senderAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      sentTransferId: null == sentTransferId
          ? _value.sentTransferId
          : sentTransferId // ignore: cast_nullable_to_non_nullable
              as int,
      periodicTransfer: null == periodicTransfer
          ? _value.periodicTransfer
          : periodicTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      routingNumber: freezed == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryBank: freezed == beneficiaryBank
          ? _value.beneficiaryBank
          : beneficiaryBank // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryAccount: null == beneficiaryAccount
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      transferDate: freezed == transferDate
          ? _value.transferDate
          : transferDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      referenceDC: freezed == referenceDC
          ? _value.referenceDC
          : referenceDC // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedSentTransferDtoImplCopyWith<$Res>
    implements $DetailedSentTransferDtoCopyWith<$Res> {
  factory _$$DetailedSentTransferDtoImplCopyWith(
          _$DetailedSentTransferDtoImpl value,
          $Res Function(_$DetailedSentTransferDtoImpl) then) =
      __$$DetailedSentTransferDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SentTransferTypeDto type,
      String? baasTransferId,
      String? bankOperationCode,
      String? senderBank,
      int accountId,
      int customerId,
      DateTime orderDate,
      DateTime? valueDate,
      String concept,
      double? settlementAmount,
      String? settlementCurrencyCode,
      double? foreignExchange,
      double? exchangeValue,
      TransferDetailOfChargesDto? detailsOfCharges,
      double? instructedAmount,
      String? instructedCurrencyCode,
      TransferStatusTypeDto status,
      String? baasMovementId,
      String? concept2,
      int? movementId,
      DateTime? executionDate,
      String? senderAccount,
      int sentTransferId,
      bool periodicTransfer,
      String? routingNumber,
      String? beneficiaryBank,
      String beneficiaryAccount,
      String beneficiaryName,
      DateTime? transferDate,
      String? referenceDC});
}

/// @nodoc
class __$$DetailedSentTransferDtoImplCopyWithImpl<$Res>
    extends _$DetailedSentTransferDtoCopyWithImpl<$Res,
        _$DetailedSentTransferDtoImpl>
    implements _$$DetailedSentTransferDtoImplCopyWith<$Res> {
  __$$DetailedSentTransferDtoImplCopyWithImpl(
      _$DetailedSentTransferDtoImpl _value,
      $Res Function(_$DetailedSentTransferDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? baasTransferId = freezed,
    Object? bankOperationCode = freezed,
    Object? senderBank = freezed,
    Object? accountId = null,
    Object? customerId = null,
    Object? orderDate = null,
    Object? valueDate = freezed,
    Object? concept = null,
    Object? settlementAmount = freezed,
    Object? settlementCurrencyCode = freezed,
    Object? foreignExchange = freezed,
    Object? exchangeValue = freezed,
    Object? detailsOfCharges = freezed,
    Object? instructedAmount = freezed,
    Object? instructedCurrencyCode = freezed,
    Object? status = null,
    Object? baasMovementId = freezed,
    Object? concept2 = freezed,
    Object? movementId = freezed,
    Object? executionDate = freezed,
    Object? senderAccount = freezed,
    Object? sentTransferId = null,
    Object? periodicTransfer = null,
    Object? routingNumber = freezed,
    Object? beneficiaryBank = freezed,
    Object? beneficiaryAccount = null,
    Object? beneficiaryName = null,
    Object? transferDate = freezed,
    Object? referenceDC = freezed,
  }) {
    return _then(_$DetailedSentTransferDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SentTransferTypeDto,
      baasTransferId: freezed == baasTransferId
          ? _value.baasTransferId
          : baasTransferId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOperationCode: freezed == bankOperationCode
          ? _value.bankOperationCode
          : bankOperationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      senderBank: freezed == senderBank
          ? _value.senderBank
          : senderBank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      settlementAmount: freezed == settlementAmount
          ? _value.settlementAmount
          : settlementAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      settlementCurrencyCode: freezed == settlementCurrencyCode
          ? _value.settlementCurrencyCode
          : settlementCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      foreignExchange: freezed == foreignExchange
          ? _value.foreignExchange
          : foreignExchange // ignore: cast_nullable_to_non_nullable
              as double?,
      exchangeValue: freezed == exchangeValue
          ? _value.exchangeValue
          : exchangeValue // ignore: cast_nullable_to_non_nullable
              as double?,
      detailsOfCharges: freezed == detailsOfCharges
          ? _value.detailsOfCharges
          : detailsOfCharges // ignore: cast_nullable_to_non_nullable
              as TransferDetailOfChargesDto?,
      instructedAmount: freezed == instructedAmount
          ? _value.instructedAmount
          : instructedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      instructedCurrencyCode: freezed == instructedCurrencyCode
          ? _value.instructedCurrencyCode
          : instructedCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransferStatusTypeDto,
      baasMovementId: freezed == baasMovementId
          ? _value.baasMovementId
          : baasMovementId // ignore: cast_nullable_to_non_nullable
              as String?,
      concept2: freezed == concept2
          ? _value.concept2
          : concept2 // ignore: cast_nullable_to_non_nullable
              as String?,
      movementId: freezed == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int?,
      executionDate: freezed == executionDate
          ? _value.executionDate
          : executionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      senderAccount: freezed == senderAccount
          ? _value.senderAccount
          : senderAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      sentTransferId: null == sentTransferId
          ? _value.sentTransferId
          : sentTransferId // ignore: cast_nullable_to_non_nullable
              as int,
      periodicTransfer: null == periodicTransfer
          ? _value.periodicTransfer
          : periodicTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      routingNumber: freezed == routingNumber
          ? _value.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryBank: freezed == beneficiaryBank
          ? _value.beneficiaryBank
          : beneficiaryBank // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryAccount: null == beneficiaryAccount
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      transferDate: freezed == transferDate
          ? _value.transferDate
          : transferDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      referenceDC: freezed == referenceDC
          ? _value.referenceDC
          : referenceDC // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedSentTransferDtoImpl implements _DetailedSentTransferDto {
  const _$DetailedSentTransferDtoImpl(
      {required this.type,
      required this.baasTransferId,
      required this.bankOperationCode,
      required this.senderBank,
      required this.accountId,
      required this.customerId,
      required this.orderDate,
      required this.valueDate,
      required this.concept,
      required this.settlementAmount,
      required this.settlementCurrencyCode,
      required this.foreignExchange,
      required this.exchangeValue,
      required this.detailsOfCharges,
      required this.instructedAmount,
      required this.instructedCurrencyCode,
      required this.status,
      required this.baasMovementId,
      required this.concept2,
      required this.movementId,
      required this.executionDate,
      required this.senderAccount,
      required this.sentTransferId,
      required this.periodicTransfer,
      required this.routingNumber,
      required this.beneficiaryBank,
      required this.beneficiaryAccount,
      required this.beneficiaryName,
      required this.transferDate,
      required this.referenceDC});

  factory _$DetailedSentTransferDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedSentTransferDtoImplFromJson(json);

  @override
  final SentTransferTypeDto type;
  @override
  final String? baasTransferId;
  @override
  final String? bankOperationCode;
  @override
  final String? senderBank;
  @override
  final int accountId;
  @override
  final int customerId;
  @override
  final DateTime orderDate;
  @override
  final DateTime? valueDate;
  @override
  final String concept;
  @override
  final double? settlementAmount;
  @override
  final String? settlementCurrencyCode;
  @override
  final double? foreignExchange;
  @override
  final double? exchangeValue;
  @override
  final TransferDetailOfChargesDto? detailsOfCharges;
  @override
  final double? instructedAmount;
  @override
  final String? instructedCurrencyCode;
  @override
  final TransferStatusTypeDto status;
  @override
  final String? baasMovementId;
  @override
  final String? concept2;
  @override
  final int? movementId;
  @override
  final DateTime? executionDate;
  @override
  final String? senderAccount;
  @override
  final int sentTransferId;
  @override
  final bool periodicTransfer;
  @override
  final String? routingNumber;
  @override
  final String? beneficiaryBank;
  @override
  final String beneficiaryAccount;
  @override
  final String beneficiaryName;
  @override
  final DateTime? transferDate;
  @override
  final String? referenceDC;

  @override
  String toString() {
    return 'DetailedSentTransferDto(type: $type, baasTransferId: $baasTransferId, bankOperationCode: $bankOperationCode, senderBank: $senderBank, accountId: $accountId, customerId: $customerId, orderDate: $orderDate, valueDate: $valueDate, concept: $concept, settlementAmount: $settlementAmount, settlementCurrencyCode: $settlementCurrencyCode, foreignExchange: $foreignExchange, exchangeValue: $exchangeValue, detailsOfCharges: $detailsOfCharges, instructedAmount: $instructedAmount, instructedCurrencyCode: $instructedCurrencyCode, status: $status, baasMovementId: $baasMovementId, concept2: $concept2, movementId: $movementId, executionDate: $executionDate, senderAccount: $senderAccount, sentTransferId: $sentTransferId, periodicTransfer: $periodicTransfer, routingNumber: $routingNumber, beneficiaryBank: $beneficiaryBank, beneficiaryAccount: $beneficiaryAccount, beneficiaryName: $beneficiaryName, transferDate: $transferDate, referenceDC: $referenceDC)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedSentTransferDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.baasTransferId, baasTransferId) ||
                other.baasTransferId == baasTransferId) &&
            (identical(other.bankOperationCode, bankOperationCode) ||
                other.bankOperationCode == bankOperationCode) &&
            (identical(other.senderBank, senderBank) ||
                other.senderBank == senderBank) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.settlementAmount, settlementAmount) ||
                other.settlementAmount == settlementAmount) &&
            (identical(other.settlementCurrencyCode, settlementCurrencyCode) ||
                other.settlementCurrencyCode == settlementCurrencyCode) &&
            (identical(other.foreignExchange, foreignExchange) ||
                other.foreignExchange == foreignExchange) &&
            (identical(other.exchangeValue, exchangeValue) ||
                other.exchangeValue == exchangeValue) &&
            (identical(other.detailsOfCharges, detailsOfCharges) ||
                other.detailsOfCharges == detailsOfCharges) &&
            (identical(other.instructedAmount, instructedAmount) ||
                other.instructedAmount == instructedAmount) &&
            (identical(other.instructedCurrencyCode, instructedCurrencyCode) ||
                other.instructedCurrencyCode == instructedCurrencyCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.baasMovementId, baasMovementId) ||
                other.baasMovementId == baasMovementId) &&
            (identical(other.concept2, concept2) ||
                other.concept2 == concept2) &&
            (identical(other.movementId, movementId) ||
                other.movementId == movementId) &&
            (identical(other.executionDate, executionDate) ||
                other.executionDate == executionDate) &&
            (identical(other.senderAccount, senderAccount) ||
                other.senderAccount == senderAccount) &&
            (identical(other.sentTransferId, sentTransferId) ||
                other.sentTransferId == sentTransferId) &&
            (identical(other.periodicTransfer, periodicTransfer) ||
                other.periodicTransfer == periodicTransfer) &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber) &&
            (identical(other.beneficiaryBank, beneficiaryBank) ||
                other.beneficiaryBank == beneficiaryBank) &&
            (identical(other.beneficiaryAccount, beneficiaryAccount) ||
                other.beneficiaryAccount == beneficiaryAccount) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.transferDate, transferDate) ||
                other.transferDate == transferDate) &&
            (identical(other.referenceDC, referenceDC) ||
                other.referenceDC == referenceDC));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        baasTransferId,
        bankOperationCode,
        senderBank,
        accountId,
        customerId,
        orderDate,
        valueDate,
        concept,
        settlementAmount,
        settlementCurrencyCode,
        foreignExchange,
        exchangeValue,
        detailsOfCharges,
        instructedAmount,
        instructedCurrencyCode,
        status,
        baasMovementId,
        concept2,
        movementId,
        executionDate,
        senderAccount,
        sentTransferId,
        periodicTransfer,
        routingNumber,
        beneficiaryBank,
        beneficiaryAccount,
        beneficiaryName,
        transferDate,
        referenceDC
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedSentTransferDtoImplCopyWith<_$DetailedSentTransferDtoImpl>
      get copyWith => __$$DetailedSentTransferDtoImplCopyWithImpl<
          _$DetailedSentTransferDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedSentTransferDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedSentTransferDto implements DetailedSentTransferDto {
  const factory _DetailedSentTransferDto(
      {required final SentTransferTypeDto type,
      required final String? baasTransferId,
      required final String? bankOperationCode,
      required final String? senderBank,
      required final int accountId,
      required final int customerId,
      required final DateTime orderDate,
      required final DateTime? valueDate,
      required final String concept,
      required final double? settlementAmount,
      required final String? settlementCurrencyCode,
      required final double? foreignExchange,
      required final double? exchangeValue,
      required final TransferDetailOfChargesDto? detailsOfCharges,
      required final double? instructedAmount,
      required final String? instructedCurrencyCode,
      required final TransferStatusTypeDto status,
      required final String? baasMovementId,
      required final String? concept2,
      required final int? movementId,
      required final DateTime? executionDate,
      required final String? senderAccount,
      required final int sentTransferId,
      required final bool periodicTransfer,
      required final String? routingNumber,
      required final String? beneficiaryBank,
      required final String beneficiaryAccount,
      required final String beneficiaryName,
      required final DateTime? transferDate,
      required final String? referenceDC}) = _$DetailedSentTransferDtoImpl;

  factory _DetailedSentTransferDto.fromJson(Map<String, dynamic> json) =
      _$DetailedSentTransferDtoImpl.fromJson;

  @override
  SentTransferTypeDto get type;
  @override
  String? get baasTransferId;
  @override
  String? get bankOperationCode;
  @override
  String? get senderBank;
  @override
  int get accountId;
  @override
  int get customerId;
  @override
  DateTime get orderDate;
  @override
  DateTime? get valueDate;
  @override
  String get concept;
  @override
  double? get settlementAmount;
  @override
  String? get settlementCurrencyCode;
  @override
  double? get foreignExchange;
  @override
  double? get exchangeValue;
  @override
  TransferDetailOfChargesDto? get detailsOfCharges;
  @override
  double? get instructedAmount;
  @override
  String? get instructedCurrencyCode;
  @override
  TransferStatusTypeDto get status;
  @override
  String? get baasMovementId;
  @override
  String? get concept2;
  @override
  int? get movementId;
  @override
  DateTime? get executionDate;
  @override
  String? get senderAccount;
  @override
  int get sentTransferId;
  @override
  bool get periodicTransfer;
  @override
  String? get routingNumber;
  @override
  String? get beneficiaryBank;
  @override
  String get beneficiaryAccount;
  @override
  String get beneficiaryName;
  @override
  DateTime? get transferDate;
  @override
  String? get referenceDC;
  @override
  @JsonKey(ignore: true)
  _$$DetailedSentTransferDtoImplCopyWith<_$DetailedSentTransferDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}