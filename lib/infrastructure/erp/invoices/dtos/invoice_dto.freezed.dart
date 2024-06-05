// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceDto _$InvoiceDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDto {
  int get erpContractId => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  int get stakeholderId => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  double? get withholdingTaxesPercentage => throw _privateConstructorUsedError;
  int? get fileId => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  DateTime? get statusDate => throw _privateConstructorUsedError;
  double? get withHoldingTaxesAmount => throw _privateConstructorUsedError;
  double? get totalWithoutTaxes => throw _privateConstructorUsedError;
  int get invoiceId => throw _privateConstructorUsedError;
  int? get stakeholderAddressId => throw _privateConstructorUsedError;
  int? get stakeholderTelephoneId => throw _privateConstructorUsedError;
  int? get stakeholderEmailId => throw _privateConstructorUsedError;
  DateTime? get sentDate => throw _privateConstructorUsedError;
  InvoiceStatusDto get status => throw _privateConstructorUsedError;
  int? get serialNumberId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  DocumentTypeCodeDto get documentTypeCode =>
      throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDtoCopyWith<InvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDtoCopyWith<$Res> {
  factory $InvoiceDtoCopyWith(
          InvoiceDto value, $Res Function(InvoiceDto) then) =
      _$InvoiceDtoCopyWithImpl<$Res, InvoiceDto>;
  @useResult
  $Res call(
      {int erpContractId,
      String? number,
      int stakeholderId,
      DateTime? dueDate,
      DateTime createdDate,
      double? totalAmount,
      String? currencyCode,
      double? withholdingTaxesPercentage,
      int? fileId,
      String? additionalInfo,
      DateTime? statusDate,
      double? withHoldingTaxesAmount,
      double? totalWithoutTaxes,
      int invoiceId,
      int? stakeholderAddressId,
      int? stakeholderTelephoneId,
      int? stakeholderEmailId,
      DateTime? sentDate,
      InvoiceStatusDto status,
      int? serialNumberId,
      String fullName,
      DocumentTypeCodeDto documentTypeCode,
      String documentNumber});
}

/// @nodoc
class _$InvoiceDtoCopyWithImpl<$Res, $Val extends InvoiceDto>
    implements $InvoiceDtoCopyWith<$Res> {
  _$InvoiceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? number = freezed,
    Object? stakeholderId = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? totalAmount = freezed,
    Object? currencyCode = freezed,
    Object? withholdingTaxesPercentage = freezed,
    Object? fileId = freezed,
    Object? additionalInfo = freezed,
    Object? statusDate = freezed,
    Object? withHoldingTaxesAmount = freezed,
    Object? totalWithoutTaxes = freezed,
    Object? invoiceId = null,
    Object? stakeholderAddressId = freezed,
    Object? stakeholderTelephoneId = freezed,
    Object? stakeholderEmailId = freezed,
    Object? sentDate = freezed,
    Object? status = null,
    Object? serialNumberId = freezed,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_value.copyWith(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
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
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
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
              as InvoiceStatusDto,
      serialNumberId: freezed == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCodeDto,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDtoImplCopyWith<$Res>
    implements $InvoiceDtoCopyWith<$Res> {
  factory _$$InvoiceDtoImplCopyWith(
          _$InvoiceDtoImpl value, $Res Function(_$InvoiceDtoImpl) then) =
      __$$InvoiceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int erpContractId,
      String? number,
      int stakeholderId,
      DateTime? dueDate,
      DateTime createdDate,
      double? totalAmount,
      String? currencyCode,
      double? withholdingTaxesPercentage,
      int? fileId,
      String? additionalInfo,
      DateTime? statusDate,
      double? withHoldingTaxesAmount,
      double? totalWithoutTaxes,
      int invoiceId,
      int? stakeholderAddressId,
      int? stakeholderTelephoneId,
      int? stakeholderEmailId,
      DateTime? sentDate,
      InvoiceStatusDto status,
      int? serialNumberId,
      String fullName,
      DocumentTypeCodeDto documentTypeCode,
      String documentNumber});
}

/// @nodoc
class __$$InvoiceDtoImplCopyWithImpl<$Res>
    extends _$InvoiceDtoCopyWithImpl<$Res, _$InvoiceDtoImpl>
    implements _$$InvoiceDtoImplCopyWith<$Res> {
  __$$InvoiceDtoImplCopyWithImpl(
      _$InvoiceDtoImpl _value, $Res Function(_$InvoiceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? number = freezed,
    Object? stakeholderId = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? totalAmount = freezed,
    Object? currencyCode = freezed,
    Object? withholdingTaxesPercentage = freezed,
    Object? fileId = freezed,
    Object? additionalInfo = freezed,
    Object? statusDate = freezed,
    Object? withHoldingTaxesAmount = freezed,
    Object? totalWithoutTaxes = freezed,
    Object? invoiceId = null,
    Object? stakeholderAddressId = freezed,
    Object? stakeholderTelephoneId = freezed,
    Object? stakeholderEmailId = freezed,
    Object? sentDate = freezed,
    Object? status = null,
    Object? serialNumberId = freezed,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_$InvoiceDtoImpl(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
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
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
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
              as InvoiceStatusDto,
      serialNumberId: freezed == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCodeDto,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceDtoImpl implements _InvoiceDto {
  const _$InvoiceDtoImpl(
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
      required this.invoiceId,
      required this.stakeholderAddressId,
      required this.stakeholderTelephoneId,
      required this.stakeholderEmailId,
      required this.sentDate,
      required this.status,
      required this.serialNumberId,
      required this.fullName,
      required this.documentTypeCode,
      required this.documentNumber});

  factory _$InvoiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceDtoImplFromJson(json);

  @override
  final int erpContractId;
  @override
  final String? number;
  @override
  final int stakeholderId;
  @override
  final DateTime? dueDate;
  @override
  final DateTime createdDate;
  @override
  final double? totalAmount;
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
  final int invoiceId;
  @override
  final int? stakeholderAddressId;
  @override
  final int? stakeholderTelephoneId;
  @override
  final int? stakeholderEmailId;
  @override
  final DateTime? sentDate;
  @override
  final InvoiceStatusDto status;
  @override
  final int? serialNumberId;
  @override
  final String fullName;
  @override
  final DocumentTypeCodeDto documentTypeCode;
  @override
  final String documentNumber;

  @override
  String toString() {
    return 'InvoiceDto(erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, totalAmount: $totalAmount, currencyCode: $currencyCode, withholdingTaxesPercentage: $withholdingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, withHoldingTaxesAmount: $withHoldingTaxesAmount, totalWithoutTaxes: $totalWithoutTaxes, invoiceId: $invoiceId, stakeholderAddressId: $stakeholderAddressId, stakeholderTelephoneId: $stakeholderTelephoneId, stakeholderEmailId: $stakeholderEmailId, sentDate: $sentDate, status: $status, serialNumberId: $serialNumberId, fullName: $fullName, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDtoImpl &&
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
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
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
                other.serialNumberId == serialNumberId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber));
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
        invoiceId,
        stakeholderAddressId,
        stakeholderTelephoneId,
        stakeholderEmailId,
        sentDate,
        status,
        serialNumberId,
        fullName,
        documentTypeCode,
        documentNumber
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDtoImplCopyWith<_$InvoiceDtoImpl> get copyWith =>
      __$$InvoiceDtoImplCopyWithImpl<_$InvoiceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceDto implements InvoiceDto {
  const factory _InvoiceDto(
      {required final int erpContractId,
      required final String? number,
      required final int stakeholderId,
      required final DateTime? dueDate,
      required final DateTime createdDate,
      required final double? totalAmount,
      required final String? currencyCode,
      required final double? withholdingTaxesPercentage,
      required final int? fileId,
      required final String? additionalInfo,
      required final DateTime? statusDate,
      required final double? withHoldingTaxesAmount,
      required final double? totalWithoutTaxes,
      required final int invoiceId,
      required final int? stakeholderAddressId,
      required final int? stakeholderTelephoneId,
      required final int? stakeholderEmailId,
      required final DateTime? sentDate,
      required final InvoiceStatusDto status,
      required final int? serialNumberId,
      required final String fullName,
      required final DocumentTypeCodeDto documentTypeCode,
      required final String documentNumber}) = _$InvoiceDtoImpl;

  factory _InvoiceDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceDtoImpl.fromJson;

  @override
  int get erpContractId;
  @override
  String? get number;
  @override
  int get stakeholderId;
  @override
  DateTime? get dueDate;
  @override
  DateTime get createdDate;
  @override
  double? get totalAmount;
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
  int get invoiceId;
  @override
  int? get stakeholderAddressId;
  @override
  int? get stakeholderTelephoneId;
  @override
  int? get stakeholderEmailId;
  @override
  DateTime? get sentDate;
  @override
  InvoiceStatusDto get status;
  @override
  int? get serialNumberId;
  @override
  String get fullName;
  @override
  DocumentTypeCodeDto get documentTypeCode;
  @override
  String get documentNumber;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceDtoImplCopyWith<_$InvoiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}