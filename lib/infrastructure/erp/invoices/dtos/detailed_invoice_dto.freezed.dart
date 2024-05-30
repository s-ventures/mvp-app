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
  int get invoiceId => throw _privateConstructorUsedError;
  int get stakeholderAddressId => throw _privateConstructorUsedError;
  int get stakeholderTelephoneId => throw _privateConstructorUsedError;
  int get stakeholderEmailId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get issueDate => throw _privateConstructorUsedError;
  DetailedInvoiceStatusDto get status => throw _privateConstructorUsedError;
  int get quotationId => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  int get serialNumberId => throw _privateConstructorUsedError;
  List<InvoiceItemDto> get items => throw _privateConstructorUsedError;
  InvoiceSerialNumberDto get serialNumber => throw _privateConstructorUsedError;
  List<InvoiceAttachmentDto> get attachments =>
      throw _privateConstructorUsedError;
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
      String number,
      int stakeholderId,
      @DateConverter() DateTime dueDate,
      @DateConverter() DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      int fileId,
      String additionalInfo,
      @DateConverter() DateTime statusDate,
      int invoiceId,
      int stakeholderAddressId,
      int stakeholderTelephoneId,
      int stakeholderEmailId,
      @DateConverter() DateTime issueDate,
      DetailedInvoiceStatusDto status,
      int quotationId,
      String accountingTypeCode,
      int serialNumberId,
      List<InvoiceItemDto> items,
      InvoiceSerialNumberDto serialNumber,
      List<InvoiceAttachmentDto> attachments,
      dynamic subtotalVatAmount});

  $InvoiceSerialNumberDtoCopyWith<$Res> get serialNumber;
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
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = null,
    Object? createdDate = null,
    Object? currencyCode = null,
    Object? withHoldingTaxesPercentage = null,
    Object? fileId = null,
    Object? additionalInfo = null,
    Object? statusDate = null,
    Object? invoiceId = null,
    Object? stakeholderAddressId = null,
    Object? stakeholderTelephoneId = null,
    Object? stakeholderEmailId = null,
    Object? issueDate = null,
    Object? status = null,
    Object? quotationId = null,
    Object? accountingTypeCode = null,
    Object? serialNumberId = null,
    Object? items = null,
    Object? serialNumber = null,
    Object? attachments = null,
    Object? subtotalVatAmount = freezed,
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as DetailedInvoiceStatusDto,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItemDto>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as InvoiceSerialNumberDto,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<InvoiceAttachmentDto>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceSerialNumberDtoCopyWith<$Res> get serialNumber {
    return $InvoiceSerialNumberDtoCopyWith<$Res>(_value.serialNumber, (value) {
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
      String number,
      int stakeholderId,
      @DateConverter() DateTime dueDate,
      @DateConverter() DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      int fileId,
      String additionalInfo,
      @DateConverter() DateTime statusDate,
      int invoiceId,
      int stakeholderAddressId,
      int stakeholderTelephoneId,
      int stakeholderEmailId,
      @DateConverter() DateTime issueDate,
      DetailedInvoiceStatusDto status,
      int quotationId,
      String accountingTypeCode,
      int serialNumberId,
      List<InvoiceItemDto> items,
      InvoiceSerialNumberDto serialNumber,
      List<InvoiceAttachmentDto> attachments,
      dynamic subtotalVatAmount});

  @override
  $InvoiceSerialNumberDtoCopyWith<$Res> get serialNumber;
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
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = null,
    Object? createdDate = null,
    Object? currencyCode = null,
    Object? withHoldingTaxesPercentage = null,
    Object? fileId = null,
    Object? additionalInfo = null,
    Object? statusDate = null,
    Object? invoiceId = null,
    Object? stakeholderAddressId = null,
    Object? stakeholderTelephoneId = null,
    Object? stakeholderEmailId = null,
    Object? issueDate = null,
    Object? status = null,
    Object? quotationId = null,
    Object? accountingTypeCode = null,
    Object? serialNumberId = null,
    Object? items = null,
    Object? serialNumber = null,
    Object? attachments = null,
    Object? subtotalVatAmount = freezed,
  }) {
    return _then(_$DetailedInvoiceDtoImpl(
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
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as DetailedInvoiceStatusDto,
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItemDto>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as InvoiceSerialNumberDto,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<InvoiceAttachmentDto>,
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
      required this.number,
      required this.stakeholderId,
      @DateConverter() required this.dueDate,
      @DateConverter() required this.createdDate,
      required this.currencyCode,
      required this.withHoldingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      @DateConverter() required this.statusDate,
      required this.invoiceId,
      required this.stakeholderAddressId,
      required this.stakeholderTelephoneId,
      required this.stakeholderEmailId,
      @DateConverter() required this.issueDate,
      required this.status,
      required this.quotationId,
      required this.accountingTypeCode,
      required this.serialNumberId,
      required final List<InvoiceItemDto> items,
      required this.serialNumber,
      required final List<InvoiceAttachmentDto> attachments,
      required this.subtotalVatAmount})
      : _items = items,
        _attachments = attachments;

  factory _$DetailedInvoiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedInvoiceDtoImplFromJson(json);

  @override
  final int erpContractId;
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
  @override
  final int invoiceId;
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
  final DetailedInvoiceStatusDto status;
  @override
  final int quotationId;
  @override
  final String accountingTypeCode;
  @override
  final int serialNumberId;
  final List<InvoiceItemDto> _items;
  @override
  List<InvoiceItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final InvoiceSerialNumberDto serialNumber;
  final List<InvoiceAttachmentDto> _attachments;
  @override
  List<InvoiceAttachmentDto> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final dynamic subtotalVatAmount;

  @override
  String toString() {
    return 'DetailedInvoiceDto(erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, invoiceId: $invoiceId, stakeholderAddressId: $stakeholderAddressId, stakeholderTelephoneId: $stakeholderTelephoneId, stakeholderEmailId: $stakeholderEmailId, issueDate: $issueDate, status: $status, quotationId: $quotationId, accountingTypeCode: $accountingTypeCode, serialNumberId: $serialNumberId, items: $items, serialNumber: $serialNumber, attachments: $attachments, subtotalVatAmount: $subtotalVatAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceDtoImpl &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
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
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
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
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
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
        number,
        stakeholderId,
        dueDate,
        createdDate,
        currencyCode,
        withHoldingTaxesPercentage,
        fileId,
        additionalInfo,
        statusDate,
        invoiceId,
        stakeholderAddressId,
        stakeholderTelephoneId,
        stakeholderEmailId,
        issueDate,
        status,
        quotationId,
        accountingTypeCode,
        serialNumberId,
        const DeepCollectionEquality().hash(_items),
        serialNumber,
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
      required final String number,
      required final int stakeholderId,
      @DateConverter() required final DateTime dueDate,
      @DateConverter() required final DateTime createdDate,
      required final String currencyCode,
      required final double withHoldingTaxesPercentage,
      required final int fileId,
      required final String additionalInfo,
      @DateConverter() required final DateTime statusDate,
      required final int invoiceId,
      required final int stakeholderAddressId,
      required final int stakeholderTelephoneId,
      required final int stakeholderEmailId,
      @DateConverter() required final DateTime issueDate,
      required final DetailedInvoiceStatusDto status,
      required final int quotationId,
      required final String accountingTypeCode,
      required final int serialNumberId,
      required final List<InvoiceItemDto> items,
      required final InvoiceSerialNumberDto serialNumber,
      required final List<InvoiceAttachmentDto> attachments,
      required final dynamic subtotalVatAmount}) = _$DetailedInvoiceDtoImpl;

  factory _DetailedInvoiceDto.fromJson(Map<String, dynamic> json) =
      _$DetailedInvoiceDtoImpl.fromJson;

  @override
  int get erpContractId;
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
  int get invoiceId;
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
  DetailedInvoiceStatusDto get status;
  @override
  int get quotationId;
  @override
  String get accountingTypeCode;
  @override
  int get serialNumberId;
  @override
  List<InvoiceItemDto> get items;
  @override
  InvoiceSerialNumberDto get serialNumber;
  @override
  List<InvoiceAttachmentDto> get attachments;
  @override
  dynamic get subtotalVatAmount;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceDtoImplCopyWith<_$DetailedInvoiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceItemDto _$InvoiceItemDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceItemDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItemDto {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  DetailedInvoiceItemUnitOfMeasureDto get unitOfMeasure =>
      throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  VatDto get vat => throw _privateConstructorUsedError;
  int get invoiceItemId => throw _privateConstructorUsedError;
  int get invoiceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemDtoCopyWith<InvoiceItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemDtoCopyWith<$Res> {
  factory $InvoiceItemDtoCopyWith(
          InvoiceItemDto value, $Res Function(InvoiceItemDto) then) =
      _$InvoiceItemDtoCopyWithImpl<$Res, InvoiceItemDto>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      DetailedInvoiceItemUnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      VatDto vat,
      int invoiceItemId,
      int invoiceId});

  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class _$InvoiceItemDtoCopyWithImpl<$Res, $Val extends InvoiceItemDto>
    implements $InvoiceItemDtoCopyWith<$Res> {
  _$InvoiceItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativeOrder = null,
    Object? itemCode = null,
    Object? description = null,
    Object? quantity = null,
    Object? unitOfMeasure = null,
    Object? price = null,
    Object? discount = null,
    Object? vat = null,
    Object? invoiceItemId = null,
    Object? invoiceId = null,
  }) {
    return _then(_value.copyWith(
      relativeOrder: null == relativeOrder
          ? _value.relativeOrder
          : relativeOrder // ignore: cast_nullable_to_non_nullable
              as int,
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as DetailedInvoiceItemUnitOfMeasureDto,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as VatDto,
      invoiceItemId: null == invoiceItemId
          ? _value.invoiceItemId
          : invoiceItemId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VatDtoCopyWith<$Res> get vat {
    return $VatDtoCopyWith<$Res>(_value.vat, (value) {
      return _then(_value.copyWith(vat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceItemDtoImplCopyWith<$Res>
    implements $InvoiceItemDtoCopyWith<$Res> {
  factory _$$InvoiceItemDtoImplCopyWith(_$InvoiceItemDtoImpl value,
          $Res Function(_$InvoiceItemDtoImpl) then) =
      __$$InvoiceItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      DetailedInvoiceItemUnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      VatDto vat,
      int invoiceItemId,
      int invoiceId});

  @override
  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class __$$InvoiceItemDtoImplCopyWithImpl<$Res>
    extends _$InvoiceItemDtoCopyWithImpl<$Res, _$InvoiceItemDtoImpl>
    implements _$$InvoiceItemDtoImplCopyWith<$Res> {
  __$$InvoiceItemDtoImplCopyWithImpl(
      _$InvoiceItemDtoImpl _value, $Res Function(_$InvoiceItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativeOrder = null,
    Object? itemCode = null,
    Object? description = null,
    Object? quantity = null,
    Object? unitOfMeasure = null,
    Object? price = null,
    Object? discount = null,
    Object? vat = null,
    Object? invoiceItemId = null,
    Object? invoiceId = null,
  }) {
    return _then(_$InvoiceItemDtoImpl(
      relativeOrder: null == relativeOrder
          ? _value.relativeOrder
          : relativeOrder // ignore: cast_nullable_to_non_nullable
              as int,
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as DetailedInvoiceItemUnitOfMeasureDto,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as VatDto,
      invoiceItemId: null == invoiceItemId
          ? _value.invoiceItemId
          : invoiceItemId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceItemDtoImpl implements _InvoiceItemDto {
  const _$InvoiceItemDtoImpl(
      {required this.relativeOrder,
      required this.itemCode,
      required this.description,
      required this.quantity,
      required this.unitOfMeasure,
      required this.price,
      required this.discount,
      required this.vat,
      required this.invoiceItemId,
      required this.invoiceId});

  factory _$InvoiceItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceItemDtoImplFromJson(json);

  @override
  final int relativeOrder;
  @override
  final String itemCode;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final DetailedInvoiceItemUnitOfMeasureDto unitOfMeasure;
  @override
  final double price;
  @override
  final double discount;
  @override
  final VatDto vat;
  @override
  final int invoiceItemId;
  @override
  final int invoiceId;

  @override
  String toString() {
    return 'InvoiceItemDto(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, invoiceItemId: $invoiceItemId, invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemDtoImpl &&
            (identical(other.relativeOrder, relativeOrder) ||
                other.relativeOrder == relativeOrder) &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitOfMeasure, unitOfMeasure) ||
                other.unitOfMeasure == unitOfMeasure) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.invoiceItemId, invoiceItemId) ||
                other.invoiceItemId == invoiceItemId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relativeOrder,
      itemCode,
      description,
      quantity,
      unitOfMeasure,
      price,
      discount,
      vat,
      invoiceItemId,
      invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemDtoImplCopyWith<_$InvoiceItemDtoImpl> get copyWith =>
      __$$InvoiceItemDtoImplCopyWithImpl<_$InvoiceItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceItemDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceItemDto implements InvoiceItemDto {
  const factory _InvoiceItemDto(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final DetailedInvoiceItemUnitOfMeasureDto unitOfMeasure,
      required final double price,
      required final double discount,
      required final VatDto vat,
      required final int invoiceItemId,
      required final int invoiceId}) = _$InvoiceItemDtoImpl;

  factory _InvoiceItemDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceItemDtoImpl.fromJson;

  @override
  int get relativeOrder;
  @override
  String get itemCode;
  @override
  String get description;
  @override
  int get quantity;
  @override
  DetailedInvoiceItemUnitOfMeasureDto get unitOfMeasure;
  @override
  double get price;
  @override
  double get discount;
  @override
  VatDto get vat;
  @override
  int get invoiceItemId;
  @override
  int get invoiceId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceItemDtoImplCopyWith<_$InvoiceItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VatDto _$VatDtoFromJson(Map<String, dynamic> json) {
  return _VatDto.fromJson(json);
}

/// @nodoc
mixin _$VatDto {
  int get vatId => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get initialDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VatDtoCopyWith<VatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VatDtoCopyWith<$Res> {
  factory $VatDtoCopyWith(VatDto value, $Res Function(VatDto) then) =
      _$VatDtoCopyWithImpl<$Res, VatDto>;
  @useResult
  $Res call(
      {int vatId,
      int percentage,
      String description,
      @DateConverter() DateTime initialDate,
      @DateConverter() DateTime endDate});
}

/// @nodoc
class _$VatDtoCopyWithImpl<$Res, $Val extends VatDto>
    implements $VatDtoCopyWith<$Res> {
  _$VatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatId = null,
    Object? percentage = null,
    Object? description = null,
    Object? initialDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      vatId: null == vatId
          ? _value.vatId
          : vatId // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: null == initialDate
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VatDtoImplCopyWith<$Res> implements $VatDtoCopyWith<$Res> {
  factory _$$VatDtoImplCopyWith(
          _$VatDtoImpl value, $Res Function(_$VatDtoImpl) then) =
      __$$VatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int vatId,
      int percentage,
      String description,
      @DateConverter() DateTime initialDate,
      @DateConverter() DateTime endDate});
}

/// @nodoc
class __$$VatDtoImplCopyWithImpl<$Res>
    extends _$VatDtoCopyWithImpl<$Res, _$VatDtoImpl>
    implements _$$VatDtoImplCopyWith<$Res> {
  __$$VatDtoImplCopyWithImpl(
      _$VatDtoImpl _value, $Res Function(_$VatDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatId = null,
    Object? percentage = null,
    Object? description = null,
    Object? initialDate = null,
    Object? endDate = null,
  }) {
    return _then(_$VatDtoImpl(
      vatId: null == vatId
          ? _value.vatId
          : vatId // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: null == initialDate
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VatDtoImpl implements _VatDto {
  const _$VatDtoImpl(
      {required this.vatId,
      required this.percentage,
      required this.description,
      @DateConverter() required this.initialDate,
      @DateConverter() required this.endDate});

  factory _$VatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VatDtoImplFromJson(json);

  @override
  final int vatId;
  @override
  final int percentage;
  @override
  final String description;
  @override
  @DateConverter()
  final DateTime initialDate;
  @override
  @DateConverter()
  final DateTime endDate;

  @override
  String toString() {
    return 'VatDto(vatId: $vatId, percentage: $percentage, description: $description, initialDate: $initialDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VatDtoImpl &&
            (identical(other.vatId, vatId) || other.vatId == vatId) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.initialDate, initialDate) ||
                other.initialDate == initialDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, vatId, percentage, description, initialDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VatDtoImplCopyWith<_$VatDtoImpl> get copyWith =>
      __$$VatDtoImplCopyWithImpl<_$VatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VatDtoImplToJson(
      this,
    );
  }
}

abstract class _VatDto implements VatDto {
  const factory _VatDto(
      {required final int vatId,
      required final int percentage,
      required final String description,
      @DateConverter() required final DateTime initialDate,
      @DateConverter() required final DateTime endDate}) = _$VatDtoImpl;

  factory _VatDto.fromJson(Map<String, dynamic> json) = _$VatDtoImpl.fromJson;

  @override
  int get vatId;
  @override
  int get percentage;
  @override
  String get description;
  @override
  @DateConverter()
  DateTime get initialDate;
  @override
  @DateConverter()
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$VatDtoImplCopyWith<_$VatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceSerialNumberDto _$InvoiceSerialNumberDtoFromJson(
    Map<String, dynamic> json) {
  return _InvoiceSerialNumberDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceSerialNumberDto {
  int get serialNumberId => throw _privateConstructorUsedError;
  int get erpContractId => throw _privateConstructorUsedError;
  DetailedInvoiceSerialNumberTypeDto get type =>
      throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get numberLast => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get templateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceSerialNumberDtoCopyWith<InvoiceSerialNumberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceSerialNumberDtoCopyWith<$Res> {
  factory $InvoiceSerialNumberDtoCopyWith(InvoiceSerialNumberDto value,
          $Res Function(InvoiceSerialNumberDto) then) =
      _$InvoiceSerialNumberDtoCopyWithImpl<$Res, InvoiceSerialNumberDto>;
  @useResult
  $Res call(
      {int serialNumberId,
      int erpContractId,
      DetailedInvoiceSerialNumberTypeDto type,
      String alias,
      String description,
      int numberLast,
      String format,
      int templateId});
}

/// @nodoc
class _$InvoiceSerialNumberDtoCopyWithImpl<$Res,
        $Val extends InvoiceSerialNumberDto>
    implements $InvoiceSerialNumberDtoCopyWith<$Res> {
  _$InvoiceSerialNumberDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serialNumberId = null,
    Object? erpContractId = null,
    Object? type = null,
    Object? alias = null,
    Object? description = null,
    Object? numberLast = null,
    Object? format = null,
    Object? templateId = null,
  }) {
    return _then(_value.copyWith(
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DetailedInvoiceSerialNumberTypeDto,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      numberLast: null == numberLast
          ? _value.numberLast
          : numberLast // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceSerialNumberDtoImplCopyWith<$Res>
    implements $InvoiceSerialNumberDtoCopyWith<$Res> {
  factory _$$InvoiceSerialNumberDtoImplCopyWith(
          _$InvoiceSerialNumberDtoImpl value,
          $Res Function(_$InvoiceSerialNumberDtoImpl) then) =
      __$$InvoiceSerialNumberDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int serialNumberId,
      int erpContractId,
      DetailedInvoiceSerialNumberTypeDto type,
      String alias,
      String description,
      int numberLast,
      String format,
      int templateId});
}

/// @nodoc
class __$$InvoiceSerialNumberDtoImplCopyWithImpl<$Res>
    extends _$InvoiceSerialNumberDtoCopyWithImpl<$Res,
        _$InvoiceSerialNumberDtoImpl>
    implements _$$InvoiceSerialNumberDtoImplCopyWith<$Res> {
  __$$InvoiceSerialNumberDtoImplCopyWithImpl(
      _$InvoiceSerialNumberDtoImpl _value,
      $Res Function(_$InvoiceSerialNumberDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serialNumberId = null,
    Object? erpContractId = null,
    Object? type = null,
    Object? alias = null,
    Object? description = null,
    Object? numberLast = null,
    Object? format = null,
    Object? templateId = null,
  }) {
    return _then(_$InvoiceSerialNumberDtoImpl(
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DetailedInvoiceSerialNumberTypeDto,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      numberLast: null == numberLast
          ? _value.numberLast
          : numberLast // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceSerialNumberDtoImpl implements _InvoiceSerialNumberDto {
  const _$InvoiceSerialNumberDtoImpl(
      {required this.serialNumberId,
      required this.erpContractId,
      required this.type,
      required this.alias,
      required this.description,
      required this.numberLast,
      required this.format,
      required this.templateId});

  factory _$InvoiceSerialNumberDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceSerialNumberDtoImplFromJson(json);

  @override
  final int serialNumberId;
  @override
  final int erpContractId;
  @override
  final DetailedInvoiceSerialNumberTypeDto type;
  @override
  final String alias;
  @override
  final String description;
  @override
  final int numberLast;
  @override
  final String format;
  @override
  final int templateId;

  @override
  String toString() {
    return 'InvoiceSerialNumberDto(serialNumberId: $serialNumberId, erpContractId: $erpContractId, type: $type, alias: $alias, description: $description, numberLast: $numberLast, format: $format, templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceSerialNumberDtoImpl &&
            (identical(other.serialNumberId, serialNumberId) ||
                other.serialNumberId == serialNumberId) &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.numberLast, numberLast) ||
                other.numberLast == numberLast) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serialNumberId, erpContractId,
      type, alias, description, numberLast, format, templateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceSerialNumberDtoImplCopyWith<_$InvoiceSerialNumberDtoImpl>
      get copyWith => __$$InvoiceSerialNumberDtoImplCopyWithImpl<
          _$InvoiceSerialNumberDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceSerialNumberDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceSerialNumberDto implements InvoiceSerialNumberDto {
  const factory _InvoiceSerialNumberDto(
      {required final int serialNumberId,
      required final int erpContractId,
      required final DetailedInvoiceSerialNumberTypeDto type,
      required final String alias,
      required final String description,
      required final int numberLast,
      required final String format,
      required final int templateId}) = _$InvoiceSerialNumberDtoImpl;

  factory _InvoiceSerialNumberDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceSerialNumberDtoImpl.fromJson;

  @override
  int get serialNumberId;
  @override
  int get erpContractId;
  @override
  DetailedInvoiceSerialNumberTypeDto get type;
  @override
  String get alias;
  @override
  String get description;
  @override
  int get numberLast;
  @override
  String get format;
  @override
  int get templateId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceSerialNumberDtoImplCopyWith<_$InvoiceSerialNumberDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceAttachmentDto _$InvoiceAttachmentDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceAttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceAttachmentDto {
  int get invoiceAttachmentId => throw _privateConstructorUsedError;
  int get invoiceId => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceAttachmentDtoCopyWith<InvoiceAttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceAttachmentDtoCopyWith<$Res> {
  factory $InvoiceAttachmentDtoCopyWith(InvoiceAttachmentDto value,
          $Res Function(InvoiceAttachmentDto) then) =
      _$InvoiceAttachmentDtoCopyWithImpl<$Res, InvoiceAttachmentDto>;
  @useResult
  $Res call({int invoiceAttachmentId, int invoiceId, int fileId});
}

/// @nodoc
class _$InvoiceAttachmentDtoCopyWithImpl<$Res,
        $Val extends InvoiceAttachmentDto>
    implements $InvoiceAttachmentDtoCopyWith<$Res> {
  _$InvoiceAttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceAttachmentId = null,
    Object? invoiceId = null,
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      invoiceAttachmentId: null == invoiceAttachmentId
          ? _value.invoiceAttachmentId
          : invoiceAttachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceAttachmentDtoImplCopyWith<$Res>
    implements $InvoiceAttachmentDtoCopyWith<$Res> {
  factory _$$InvoiceAttachmentDtoImplCopyWith(_$InvoiceAttachmentDtoImpl value,
          $Res Function(_$InvoiceAttachmentDtoImpl) then) =
      __$$InvoiceAttachmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int invoiceAttachmentId, int invoiceId, int fileId});
}

/// @nodoc
class __$$InvoiceAttachmentDtoImplCopyWithImpl<$Res>
    extends _$InvoiceAttachmentDtoCopyWithImpl<$Res, _$InvoiceAttachmentDtoImpl>
    implements _$$InvoiceAttachmentDtoImplCopyWith<$Res> {
  __$$InvoiceAttachmentDtoImplCopyWithImpl(_$InvoiceAttachmentDtoImpl _value,
      $Res Function(_$InvoiceAttachmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceAttachmentId = null,
    Object? invoiceId = null,
    Object? fileId = null,
  }) {
    return _then(_$InvoiceAttachmentDtoImpl(
      invoiceAttachmentId: null == invoiceAttachmentId
          ? _value.invoiceAttachmentId
          : invoiceAttachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceAttachmentDtoImpl implements _InvoiceAttachmentDto {
  const _$InvoiceAttachmentDtoImpl(
      {required this.invoiceAttachmentId,
      required this.invoiceId,
      required this.fileId});

  factory _$InvoiceAttachmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceAttachmentDtoImplFromJson(json);

  @override
  final int invoiceAttachmentId;
  @override
  final int invoiceId;
  @override
  final int fileId;

  @override
  String toString() {
    return 'InvoiceAttachmentDto(invoiceAttachmentId: $invoiceAttachmentId, invoiceId: $invoiceId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceAttachmentDtoImpl &&
            (identical(other.invoiceAttachmentId, invoiceAttachmentId) ||
                other.invoiceAttachmentId == invoiceAttachmentId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, invoiceAttachmentId, invoiceId, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceAttachmentDtoImplCopyWith<_$InvoiceAttachmentDtoImpl>
      get copyWith =>
          __$$InvoiceAttachmentDtoImplCopyWithImpl<_$InvoiceAttachmentDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceAttachmentDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceAttachmentDto implements InvoiceAttachmentDto {
  const factory _InvoiceAttachmentDto(
      {required final int invoiceAttachmentId,
      required final int invoiceId,
      required final int fileId}) = _$InvoiceAttachmentDtoImpl;

  factory _InvoiceAttachmentDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceAttachmentDtoImpl.fromJson;

  @override
  int get invoiceAttachmentId;
  @override
  int get invoiceId;
  @override
  int get fileId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceAttachmentDtoImplCopyWith<_$InvoiceAttachmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
