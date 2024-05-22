// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotationDto _$QuotationDtoFromJson(Map<String, dynamic> json) {
  return _QuotationDto.fromJson(json);
}

/// @nodoc
mixin _$QuotationDto {
  int get erpContractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  int get stakeholderId => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  double? get withholdingTaxesPercentage => throw _privateConstructorUsedError;
  int? get fileId => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  DateTime? get statusDate => throw _privateConstructorUsedError;
  double? get withHoldingTaxesAmount => throw _privateConstructorUsedError;
  double? get totalWithoutTaxes => throw _privateConstructorUsedError;
  int get quotationId => throw _privateConstructorUsedError;
  int? get stakeholderAddressId => throw _privateConstructorUsedError;
  int? get stakeholderTelephoneId => throw _privateConstructorUsedError;
  int? get stakeholderEmailId => throw _privateConstructorUsedError;
  DateTime? get sentDate => throw _privateConstructorUsedError;
  QuotationStatusDto get status => throw _privateConstructorUsedError;
  int? get serialNumberId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationDtoCopyWith<QuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationDtoCopyWith<$Res> {
  factory $QuotationDtoCopyWith(
          QuotationDto value, $Res Function(QuotationDto) then) =
      _$QuotationDtoCopyWithImpl<$Res, QuotationDto>;
  @useResult
  $Res call(
      {int erpContractId,
      String number,
      int stakeholderId,
      DateTime? dueDate,
      DateTime createdDate,
      double totalAmount,
      String? currencyCode,
      double? withholdingTaxesPercentage,
      int? fileId,
      String? additionalInfo,
      DateTime? statusDate,
      double? withHoldingTaxesAmount,
      double? totalWithoutTaxes,
      int quotationId,
      int? stakeholderAddressId,
      int? stakeholderTelephoneId,
      int? stakeholderEmailId,
      DateTime? sentDate,
      QuotationStatusDto status,
      int? serialNumberId});
}

/// @nodoc
class _$QuotationDtoCopyWithImpl<$Res, $Val extends QuotationDto>
    implements $QuotationDtoCopyWith<$Res> {
  _$QuotationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? totalAmount = null,
    Object? currencyCode = freezed,
    Object? withholdingTaxesPercentage = freezed,
    Object? fileId = freezed,
    Object? additionalInfo = freezed,
    Object? statusDate = freezed,
    Object? withHoldingTaxesAmount = freezed,
    Object? totalWithoutTaxes = freezed,
    Object? quotationId = null,
    Object? stakeholderAddressId = freezed,
    Object? stakeholderTelephoneId = freezed,
    Object? stakeholderEmailId = freezed,
    Object? sentDate = freezed,
    Object? status = null,
    Object? serialNumberId = freezed,
  }) {
    return _then(_value.copyWith(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      withholdingTaxesPercentage: freezed == withholdingTaxesPercentage
          ? _value.withholdingTaxesPercentage
          : withholdingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withHoldingTaxesAmount: freezed == withHoldingTaxesAmount
          ? _value.withHoldingTaxesAmount
          : withHoldingTaxesAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithoutTaxes: freezed == totalWithoutTaxes
          ? _value.totalWithoutTaxes
          : totalWithoutTaxes // ignore: cast_nullable_to_non_nullable
              as double?,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
      stakeholderAddressId: freezed == stakeholderAddressId
          ? _value.stakeholderAddressId
          : stakeholderAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      stakeholderTelephoneId: freezed == stakeholderTelephoneId
          ? _value.stakeholderTelephoneId
          : stakeholderTelephoneId // ignore: cast_nullable_to_non_nullable
              as int?,
      stakeholderEmailId: freezed == stakeholderEmailId
          ? _value.stakeholderEmailId
          : stakeholderEmailId // ignore: cast_nullable_to_non_nullable
              as int?,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuotationStatusDto,
      serialNumberId: freezed == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotationDtoImplCopyWith<$Res>
    implements $QuotationDtoCopyWith<$Res> {
  factory _$$QuotationDtoImplCopyWith(
          _$QuotationDtoImpl value, $Res Function(_$QuotationDtoImpl) then) =
      __$$QuotationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int erpContractId,
      String number,
      int stakeholderId,
      DateTime? dueDate,
      DateTime createdDate,
      double totalAmount,
      String? currencyCode,
      double? withholdingTaxesPercentage,
      int? fileId,
      String? additionalInfo,
      DateTime? statusDate,
      double? withHoldingTaxesAmount,
      double? totalWithoutTaxes,
      int quotationId,
      int? stakeholderAddressId,
      int? stakeholderTelephoneId,
      int? stakeholderEmailId,
      DateTime? sentDate,
      QuotationStatusDto status,
      int? serialNumberId});
}

/// @nodoc
class __$$QuotationDtoImplCopyWithImpl<$Res>
    extends _$QuotationDtoCopyWithImpl<$Res, _$QuotationDtoImpl>
    implements _$$QuotationDtoImplCopyWith<$Res> {
  __$$QuotationDtoImplCopyWithImpl(
      _$QuotationDtoImpl _value, $Res Function(_$QuotationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? totalAmount = null,
    Object? currencyCode = freezed,
    Object? withholdingTaxesPercentage = freezed,
    Object? fileId = freezed,
    Object? additionalInfo = freezed,
    Object? statusDate = freezed,
    Object? withHoldingTaxesAmount = freezed,
    Object? totalWithoutTaxes = freezed,
    Object? quotationId = null,
    Object? stakeholderAddressId = freezed,
    Object? stakeholderTelephoneId = freezed,
    Object? stakeholderEmailId = freezed,
    Object? sentDate = freezed,
    Object? status = null,
    Object? serialNumberId = freezed,
  }) {
    return _then(_$QuotationDtoImpl(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      withholdingTaxesPercentage: freezed == withholdingTaxesPercentage
          ? _value.withholdingTaxesPercentage
          : withholdingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withHoldingTaxesAmount: freezed == withHoldingTaxesAmount
          ? _value.withHoldingTaxesAmount
          : withHoldingTaxesAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithoutTaxes: freezed == totalWithoutTaxes
          ? _value.totalWithoutTaxes
          : totalWithoutTaxes // ignore: cast_nullable_to_non_nullable
              as double?,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
      stakeholderAddressId: freezed == stakeholderAddressId
          ? _value.stakeholderAddressId
          : stakeholderAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      stakeholderTelephoneId: freezed == stakeholderTelephoneId
          ? _value.stakeholderTelephoneId
          : stakeholderTelephoneId // ignore: cast_nullable_to_non_nullable
              as int?,
      stakeholderEmailId: freezed == stakeholderEmailId
          ? _value.stakeholderEmailId
          : stakeholderEmailId // ignore: cast_nullable_to_non_nullable
              as int?,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuotationStatusDto,
      serialNumberId: freezed == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotationDtoImpl implements _QuotationDto {
  const _$QuotationDtoImpl(
      {required this.erpContractId,
      required this.number,
      required this.stakeholderId,
      required this.dueDate,
      required this.createdDate,
      required this.totalAmount,
      required this.currencyCode,
      required this.withholdingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      required this.statusDate,
      required this.withHoldingTaxesAmount,
      required this.totalWithoutTaxes,
      required this.quotationId,
      required this.stakeholderAddressId,
      required this.stakeholderTelephoneId,
      required this.stakeholderEmailId,
      required this.sentDate,
      required this.status,
      required this.serialNumberId});

  factory _$QuotationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationDtoImplFromJson(json);

  @override
  final int erpContractId;
  @override
  final String number;
  @override
  final int stakeholderId;
  @override
  final DateTime? dueDate;
  @override
  final DateTime createdDate;
  @override
  final double totalAmount;
  @override
  final String? currencyCode;
  @override
  final double? withholdingTaxesPercentage;
  @override
  final int? fileId;
  @override
  final String? additionalInfo;
  @override
  final DateTime? statusDate;
  @override
  final double? withHoldingTaxesAmount;
  @override
  final double? totalWithoutTaxes;
  @override
  final int quotationId;
  @override
  final int? stakeholderAddressId;
  @override
  final int? stakeholderTelephoneId;
  @override
  final int? stakeholderEmailId;
  @override
  final DateTime? sentDate;
  @override
  final QuotationStatusDto status;
  @override
  final int? serialNumberId;

  @override
  String toString() {
    return 'QuotationDto(erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, totalAmount: $totalAmount, currencyCode: $currencyCode, withholdingTaxesPercentage: $withholdingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, withHoldingTaxesAmount: $withHoldingTaxesAmount, totalWithoutTaxes: $totalWithoutTaxes, quotationId: $quotationId, stakeholderAddressId: $stakeholderAddressId, stakeholderTelephoneId: $stakeholderTelephoneId, stakeholderEmailId: $stakeholderEmailId, sentDate: $sentDate, status: $status, serialNumberId: $serialNumberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationDtoImpl &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.stakeholderId, stakeholderId) ||
                other.stakeholderId == stakeholderId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.withholdingTaxesPercentage,
                    withholdingTaxesPercentage) ||
                other.withholdingTaxesPercentage ==
                    withholdingTaxesPercentage) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.withHoldingTaxesAmount, withHoldingTaxesAmount) ||
                other.withHoldingTaxesAmount == withHoldingTaxesAmount) &&
            (identical(other.totalWithoutTaxes, totalWithoutTaxes) ||
                other.totalWithoutTaxes == totalWithoutTaxes) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.stakeholderAddressId, stakeholderAddressId) ||
                other.stakeholderAddressId == stakeholderAddressId) &&
            (identical(other.stakeholderTelephoneId, stakeholderTelephoneId) ||
                other.stakeholderTelephoneId == stakeholderTelephoneId) &&
            (identical(other.stakeholderEmailId, stakeholderEmailId) ||
                other.stakeholderEmailId == stakeholderEmailId) &&
            (identical(other.sentDate, sentDate) ||
                other.sentDate == sentDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serialNumberId, serialNumberId) ||
                other.serialNumberId == serialNumberId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        erpContractId,
        number,
        stakeholderId,
        dueDate,
        createdDate,
        totalAmount,
        currencyCode,
        withholdingTaxesPercentage,
        fileId,
        additionalInfo,
        statusDate,
        withHoldingTaxesAmount,
        totalWithoutTaxes,
        quotationId,
        stakeholderAddressId,
        stakeholderTelephoneId,
        stakeholderEmailId,
        sentDate,
        status,
        serialNumberId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationDtoImplCopyWith<_$QuotationDtoImpl> get copyWith =>
      __$$QuotationDtoImplCopyWithImpl<_$QuotationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotationDtoImplToJson(
      this,
    );
  }
}

abstract class _QuotationDto implements QuotationDto {
  const factory _QuotationDto(
      {required final int erpContractId,
      required final String number,
      required final int stakeholderId,
      required final DateTime? dueDate,
      required final DateTime createdDate,
      required final double totalAmount,
      required final String? currencyCode,
      required final double? withholdingTaxesPercentage,
      required final int? fileId,
      required final String? additionalInfo,
      required final DateTime? statusDate,
      required final double? withHoldingTaxesAmount,
      required final double? totalWithoutTaxes,
      required final int quotationId,
      required final int? stakeholderAddressId,
      required final int? stakeholderTelephoneId,
      required final int? stakeholderEmailId,
      required final DateTime? sentDate,
      required final QuotationStatusDto status,
      required final int? serialNumberId}) = _$QuotationDtoImpl;

  factory _QuotationDto.fromJson(Map<String, dynamic> json) =
      _$QuotationDtoImpl.fromJson;

  @override
  int get erpContractId;
  @override
  String get number;
  @override
  int get stakeholderId;
  @override
  DateTime? get dueDate;
  @override
  DateTime get createdDate;
  @override
  double get totalAmount;
  @override
  String? get currencyCode;
  @override
  double? get withholdingTaxesPercentage;
  @override
  int? get fileId;
  @override
  String? get additionalInfo;
  @override
  DateTime? get statusDate;
  @override
  double? get withHoldingTaxesAmount;
  @override
  double? get totalWithoutTaxes;
  @override
  int get quotationId;
  @override
  int? get stakeholderAddressId;
  @override
  int? get stakeholderTelephoneId;
  @override
  int? get stakeholderEmailId;
  @override
  DateTime? get sentDate;
  @override
  QuotationStatusDto get status;
  @override
  int? get serialNumberId;
  @override
  @JsonKey(ignore: true)
  _$$QuotationDtoImplCopyWith<_$QuotationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
