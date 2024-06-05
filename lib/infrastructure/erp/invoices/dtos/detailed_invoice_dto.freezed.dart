// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedInvoiceDto _$DetailedInvoiceDtoFromJson(Map<String, dynamic> json) {
  return _DetailedInvoiceDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedInvoiceDto {
  int get erpContractId => throw _privateConstructorUsedError;
  int get invoiceId => throw _privateConstructorUsedError;
  int get contractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  int get stakeholderId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get dueDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  double get withHoldingTaxesPercentage => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get statusDate => throw _privateConstructorUsedError;
  List<InvoiceItemDto> get items => throw _privateConstructorUsedError;
  SerialNumberDto get serialNumber => throw _privateConstructorUsedError;
  int get stakeholderAddressId => throw _privateConstructorUsedError;
  int get stakeholderTelephoneId => throw _privateConstructorUsedError;
  int get stakeholderEmailId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get issueDate => throw _privateConstructorUsedError;
  InvoiceStatusDto get status => throw _privateConstructorUsedError;
  int get quotationId => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  int get serialNumberId => throw _privateConstructorUsedError;
  List<FileAttachmentDto> get attachments =>
      throw _privateConstructorUsedError; // Todo(jesus): change when we have the type from the bfmf
  dynamic get subtotalVatAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedInvoiceDtoCopyWith<DetailedInvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedInvoiceDtoCopyWith<$Res> {
  factory $DetailedInvoiceDtoCopyWith(
          DetailedInvoiceDto value, $Res Function(DetailedInvoiceDto) then) =
      _$DetailedInvoiceDtoCopyWithImpl<$Res, DetailedInvoiceDto>;
  @useResult
  $Res call(
      {int erpContractId,
      int invoiceId,
      int contractId,
      String number,
      int stakeholderId,
      @DateConverter() DateTime dueDate,
      @DateConverter() DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      int fileId,
      String additionalInfo,
      @DateConverter() DateTime statusDate,
      List<InvoiceItemDto> items,
      SerialNumberDto serialNumber,
      int stakeholderAddressId,
      int stakeholderTelephoneId,
      int stakeholderEmailId,
      @DateConverter() DateTime issueDate,
      InvoiceStatusDto status,
      int quotationId,
      String accountingTypeCode,
      int serialNumberId,
      List<FileAttachmentDto> attachments,
      dynamic subtotalVatAmount});

  $SerialNumberDtoCopyWith<$Res> get serialNumber;
}

/// @nodoc
class _$DetailedInvoiceDtoCopyWithImpl<$Res, $Val extends DetailedInvoiceDto>
    implements $DetailedInvoiceDtoCopyWith<$Res> {
  _$DetailedInvoiceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? invoiceId = null,
    Object? contractId = null,
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = null,
    Object? createdDate = null,
    Object? currencyCode = null,
    Object? withHoldingTaxesPercentage = null,
    Object? fileId = null,
    Object? additionalInfo = null,
    Object? statusDate = null,
    Object? items = null,
    Object? serialNumber = null,
    Object? stakeholderAddressId = null,
    Object? stakeholderTelephoneId = null,
    Object? stakeholderEmailId = null,
    Object? issueDate = null,
    Object? status = null,
    Object? quotationId = null,
    Object? accountingTypeCode = null,
    Object? serialNumberId = null,
    Object? attachments = null,
    Object? subtotalVatAmount = freezed,
  }) {
    return _then(_value.copyWith(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      withHoldingTaxesPercentage: null == withHoldingTaxesPercentage
          ? _value.withHoldingTaxesPercentage
          : withHoldingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      statusDate: null == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItemDto>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumberDto,
      stakeholderAddressId: null == stakeholderAddressId
          ? _value.stakeholderAddressId
          : stakeholderAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      stakeholderTelephoneId: null == stakeholderTelephoneId
          ? _value.stakeholderTelephoneId
          : stakeholderTelephoneId // ignore: cast_nullable_to_non_nullable
              as int,
      stakeholderEmailId: null == stakeholderEmailId
          ? _value.stakeholderEmailId
          : stakeholderEmailId // ignore: cast_nullable_to_non_nullable
              as int,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusDto,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachmentDto>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SerialNumberDtoCopyWith<$Res> get serialNumber {
    return $SerialNumberDtoCopyWith<$Res>(_value.serialNumber, (value) {
      return _then(_value.copyWith(serialNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedInvoiceDtoImplCopyWith<$Res>
    implements $DetailedInvoiceDtoCopyWith<$Res> {
  factory _$$DetailedInvoiceDtoImplCopyWith(_$DetailedInvoiceDtoImpl value,
          $Res Function(_$DetailedInvoiceDtoImpl) then) =
      __$$DetailedInvoiceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int erpContractId,
      int invoiceId,
      int contractId,
      String number,
      int stakeholderId,
      @DateConverter() DateTime dueDate,
      @DateConverter() DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      int fileId,
      String additionalInfo,
      @DateConverter() DateTime statusDate,
      List<InvoiceItemDto> items,
      SerialNumberDto serialNumber,
      int stakeholderAddressId,
      int stakeholderTelephoneId,
      int stakeholderEmailId,
      @DateConverter() DateTime issueDate,
      InvoiceStatusDto status,
      int quotationId,
      String accountingTypeCode,
      int serialNumberId,
      List<FileAttachmentDto> attachments,
      dynamic subtotalVatAmount});

  @override
  $SerialNumberDtoCopyWith<$Res> get serialNumber;
}

/// @nodoc
class __$$DetailedInvoiceDtoImplCopyWithImpl<$Res>
    extends _$DetailedInvoiceDtoCopyWithImpl<$Res, _$DetailedInvoiceDtoImpl>
    implements _$$DetailedInvoiceDtoImplCopyWith<$Res> {
  __$$DetailedInvoiceDtoImplCopyWithImpl(_$DetailedInvoiceDtoImpl _value,
      $Res Function(_$DetailedInvoiceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? invoiceId = null,
    Object? contractId = null,
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = null,
    Object? createdDate = null,
    Object? currencyCode = null,
    Object? withHoldingTaxesPercentage = null,
    Object? fileId = null,
    Object? additionalInfo = null,
    Object? statusDate = null,
    Object? items = null,
    Object? serialNumber = null,
    Object? stakeholderAddressId = null,
    Object? stakeholderTelephoneId = null,
    Object? stakeholderEmailId = null,
    Object? issueDate = null,
    Object? status = null,
    Object? quotationId = null,
    Object? accountingTypeCode = null,
    Object? serialNumberId = null,
    Object? attachments = null,
    Object? subtotalVatAmount = freezed,
  }) {
    return _then(_$DetailedInvoiceDtoImpl(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      withHoldingTaxesPercentage: null == withHoldingTaxesPercentage
          ? _value.withHoldingTaxesPercentage
          : withHoldingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      statusDate: null == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItemDto>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumberDto,
      stakeholderAddressId: null == stakeholderAddressId
          ? _value.stakeholderAddressId
          : stakeholderAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      stakeholderTelephoneId: null == stakeholderTelephoneId
          ? _value.stakeholderTelephoneId
          : stakeholderTelephoneId // ignore: cast_nullable_to_non_nullable
              as int,
      stakeholderEmailId: null == stakeholderEmailId
          ? _value.stakeholderEmailId
          : stakeholderEmailId // ignore: cast_nullable_to_non_nullable
              as int,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatusDto,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachmentDto>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedInvoiceDtoImpl implements _DetailedInvoiceDto {
  const _$DetailedInvoiceDtoImpl(
      {required this.erpContractId,
      required this.invoiceId,
      required this.contractId,
      required this.number,
      required this.stakeholderId,
      @DateConverter() required this.dueDate,
      @DateConverter() required this.createdDate,
      required this.currencyCode,
      required this.withHoldingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      @DateConverter() required this.statusDate,
      required final List<InvoiceItemDto> items,
      required this.serialNumber,
      required this.stakeholderAddressId,
      required this.stakeholderTelephoneId,
      required this.stakeholderEmailId,
      @DateConverter() required this.issueDate,
      required this.status,
      required this.quotationId,
      required this.accountingTypeCode,
      required this.serialNumberId,
      required final List<FileAttachmentDto> attachments,
      required this.subtotalVatAmount})
      : _items = items,
        _attachments = attachments;

  factory _$DetailedInvoiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedInvoiceDtoImplFromJson(json);

  @override
  final int erpContractId;
  @override
  final int invoiceId;
  @override
  final int contractId;
  @override
  final String number;
  @override
  final int stakeholderId;
  @override
  @DateConverter()
  final DateTime dueDate;
  @override
  @DateConverter()
  final DateTime createdDate;
  @override
  final String currencyCode;
  @override
  final double withHoldingTaxesPercentage;
  @override
  final int fileId;
  @override
  final String additionalInfo;
  @override
  @DateConverter()
  final DateTime statusDate;
  final List<InvoiceItemDto> _items;
  @override
  List<InvoiceItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final SerialNumberDto serialNumber;
  @override
  final int stakeholderAddressId;
  @override
  final int stakeholderTelephoneId;
  @override
  final int stakeholderEmailId;
  @override
  @DateConverter()
  final DateTime issueDate;
  @override
  final InvoiceStatusDto status;
  @override
  final int quotationId;
  @override
  final String accountingTypeCode;
  @override
  final int serialNumberId;
  final List<FileAttachmentDto> _attachments;
  @override
  List<FileAttachmentDto> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

// Todo(jesus): change when we have the type from the bfmf
  @override
  final dynamic subtotalVatAmount;

  @override
  String toString() {
    return 'DetailedInvoiceDto(erpContractId: $erpContractId, invoiceId: $invoiceId, contractId: $contractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, items: $items, serialNumber: $serialNumber, stakeholderAddressId: $stakeholderAddressId, stakeholderTelephoneId: $stakeholderTelephoneId, stakeholderEmailId: $stakeholderEmailId, issueDate: $issueDate, status: $status, quotationId: $quotationId, accountingTypeCode: $accountingTypeCode, serialNumberId: $serialNumberId, attachments: $attachments, subtotalVatAmount: $subtotalVatAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceDtoImpl &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.contractId, contractId) ||
                other.contractId == contractId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.stakeholderId, stakeholderId) ||
                other.stakeholderId == stakeholderId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.withHoldingTaxesPercentage,
                    withHoldingTaxesPercentage) ||
                other.withHoldingTaxesPercentage ==
                    withHoldingTaxesPercentage) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.stakeholderAddressId, stakeholderAddressId) ||
                other.stakeholderAddressId == stakeholderAddressId) &&
            (identical(other.stakeholderTelephoneId, stakeholderTelephoneId) ||
                other.stakeholderTelephoneId == stakeholderTelephoneId) &&
            (identical(other.stakeholderEmailId, stakeholderEmailId) ||
                other.stakeholderEmailId == stakeholderEmailId) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.accountingTypeCode, accountingTypeCode) ||
                other.accountingTypeCode == accountingTypeCode) &&
            (identical(other.serialNumberId, serialNumberId) ||
                other.serialNumberId == serialNumberId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other.subtotalVatAmount, subtotalVatAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        erpContractId,
        invoiceId,
        contractId,
        number,
        stakeholderId,
        dueDate,
        createdDate,
        currencyCode,
        withHoldingTaxesPercentage,
        fileId,
        additionalInfo,
        statusDate,
        const DeepCollectionEquality().hash(_items),
        serialNumber,
        stakeholderAddressId,
        stakeholderTelephoneId,
        stakeholderEmailId,
        issueDate,
        status,
        quotationId,
        accountingTypeCode,
        serialNumberId,
        const DeepCollectionEquality().hash(_attachments),
        const DeepCollectionEquality().hash(subtotalVatAmount)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedInvoiceDtoImplCopyWith<_$DetailedInvoiceDtoImpl> get copyWith =>
      __$$DetailedInvoiceDtoImplCopyWithImpl<_$DetailedInvoiceDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedInvoiceDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedInvoiceDto implements DetailedInvoiceDto {
  const factory _DetailedInvoiceDto(
      {required final int erpContractId,
      required final int invoiceId,
      required final int contractId,
      required final String number,
      required final int stakeholderId,
      @DateConverter() required final DateTime dueDate,
      @DateConverter() required final DateTime createdDate,
      required final String currencyCode,
      required final double withHoldingTaxesPercentage,
      required final int fileId,
      required final String additionalInfo,
      @DateConverter() required final DateTime statusDate,
      required final List<InvoiceItemDto> items,
      required final SerialNumberDto serialNumber,
      required final int stakeholderAddressId,
      required final int stakeholderTelephoneId,
      required final int stakeholderEmailId,
      @DateConverter() required final DateTime issueDate,
      required final InvoiceStatusDto status,
      required final int quotationId,
      required final String accountingTypeCode,
      required final int serialNumberId,
      required final List<FileAttachmentDto> attachments,
      required final dynamic subtotalVatAmount}) = _$DetailedInvoiceDtoImpl;

  factory _DetailedInvoiceDto.fromJson(Map<String, dynamic> json) =
      _$DetailedInvoiceDtoImpl.fromJson;

  @override
  int get erpContractId;
  @override
  int get invoiceId;
  @override
  int get contractId;
  @override
  String get number;
  @override
  int get stakeholderId;
  @override
  @DateConverter()
  DateTime get dueDate;
  @override
  @DateConverter()
  DateTime get createdDate;
  @override
  String get currencyCode;
  @override
  double get withHoldingTaxesPercentage;
  @override
  int get fileId;
  @override
  String get additionalInfo;
  @override
  @DateConverter()
  DateTime get statusDate;
  @override
  List<InvoiceItemDto> get items;
  @override
  SerialNumberDto get serialNumber;
  @override
  int get stakeholderAddressId;
  @override
  int get stakeholderTelephoneId;
  @override
  int get stakeholderEmailId;
  @override
  @DateConverter()
  DateTime get issueDate;
  @override
  InvoiceStatusDto get status;
  @override
  int get quotationId;
  @override
  String get accountingTypeCode;
  @override
  int get serialNumberId;
  @override
  List<FileAttachmentDto> get attachments;
  @override // Todo(jesus): change when we have the type from the bfmf
  dynamic get subtotalVatAmount;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceDtoImplCopyWith<_$DetailedInvoiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
