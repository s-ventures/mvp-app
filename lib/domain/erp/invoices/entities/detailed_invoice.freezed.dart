// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedInvoice {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get contractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  UniqueId get stakeholderId => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  double get withHoldingTaxesPercentage => throw _privateConstructorUsedError;
  UniqueId get fileId => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  DateTime get statusDate => throw _privateConstructorUsedError;
  List<InvoiceItem> get items => throw _privateConstructorUsedError;
  SerialNumber get serialNumber => throw _privateConstructorUsedError;
  UniqueId get stakeholderAddressId => throw _privateConstructorUsedError;
  UniqueId get stakeholderTelephoneId => throw _privateConstructorUsedError;
  UniqueId get stakeholderEmailId => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  InvoiceStatus get status => throw _privateConstructorUsedError;
  UniqueId get quotationId => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  UniqueId get serialNumberId => throw _privateConstructorUsedError;
  List<FileAttachment> get attachments =>
      throw _privateConstructorUsedError; // Todo(jesus): change to dto from bfmf
  dynamic get subtotalVatAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedInvoiceCopyWith<DetailedInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedInvoiceCopyWith<$Res> {
  factory $DetailedInvoiceCopyWith(
          DetailedInvoice value, $Res Function(DetailedInvoice) then) =
      _$DetailedInvoiceCopyWithImpl<$Res, DetailedInvoice>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId contractId,
      String number,
      UniqueId stakeholderId,
      DateTime dueDate,
      DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      UniqueId fileId,
      String additionalInfo,
      DateTime statusDate,
      List<InvoiceItem> items,
      SerialNumber serialNumber,
      UniqueId stakeholderAddressId,
      UniqueId stakeholderTelephoneId,
      UniqueId stakeholderEmailId,
      DateTime issueDate,
      InvoiceStatus status,
      UniqueId quotationId,
      String accountingTypeCode,
      UniqueId serialNumberId,
      List<FileAttachment> attachments,
      dynamic subtotalVatAmount});

  $SerialNumberCopyWith<$Res> get serialNumber;
}

/// @nodoc
class _$DetailedInvoiceCopyWithImpl<$Res, $Val extends DetailedInvoice>
    implements $DetailedInvoiceCopyWith<$Res> {
  _$DetailedInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
              as UniqueId,
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
              as List<InvoiceItem>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumber,
      stakeholderAddressId: null == stakeholderAddressId
          ? _value.stakeholderAddressId
          : stakeholderAddressId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      stakeholderTelephoneId: null == stakeholderTelephoneId
          ? _value.stakeholderTelephoneId
          : stakeholderTelephoneId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      stakeholderEmailId: null == stakeholderEmailId
          ? _value.stakeholderEmailId
          : stakeholderEmailId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SerialNumberCopyWith<$Res> get serialNumber {
    return $SerialNumberCopyWith<$Res>(_value.serialNumber, (value) {
      return _then(_value.copyWith(serialNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedInvoiceImplCopyWith<$Res>
    implements $DetailedInvoiceCopyWith<$Res> {
  factory _$$DetailedInvoiceImplCopyWith(_$DetailedInvoiceImpl value,
          $Res Function(_$DetailedInvoiceImpl) then) =
      __$$DetailedInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId contractId,
      String number,
      UniqueId stakeholderId,
      DateTime dueDate,
      DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      UniqueId fileId,
      String additionalInfo,
      DateTime statusDate,
      List<InvoiceItem> items,
      SerialNumber serialNumber,
      UniqueId stakeholderAddressId,
      UniqueId stakeholderTelephoneId,
      UniqueId stakeholderEmailId,
      DateTime issueDate,
      InvoiceStatus status,
      UniqueId quotationId,
      String accountingTypeCode,
      UniqueId serialNumberId,
      List<FileAttachment> attachments,
      dynamic subtotalVatAmount});

  @override
  $SerialNumberCopyWith<$Res> get serialNumber;
}

/// @nodoc
class __$$DetailedInvoiceImplCopyWithImpl<$Res>
    extends _$DetailedInvoiceCopyWithImpl<$Res, _$DetailedInvoiceImpl>
    implements _$$DetailedInvoiceImplCopyWith<$Res> {
  __$$DetailedInvoiceImplCopyWithImpl(
      _$DetailedInvoiceImpl _value, $Res Function(_$DetailedInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    return _then(_$DetailedInvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
              as UniqueId,
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
              as List<InvoiceItem>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumber,
      stakeholderAddressId: null == stakeholderAddressId
          ? _value.stakeholderAddressId
          : stakeholderAddressId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      stakeholderTelephoneId: null == stakeholderTelephoneId
          ? _value.stakeholderTelephoneId
          : stakeholderTelephoneId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      stakeholderEmailId: null == stakeholderEmailId
          ? _value.stakeholderEmailId
          : stakeholderEmailId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DetailedInvoiceImpl implements _DetailedInvoice {
  const _$DetailedInvoiceImpl(
      {required this.id,
      required this.contractId,
      required this.number,
      required this.stakeholderId,
      required this.dueDate,
      required this.createdDate,
      required this.currencyCode,
      required this.withHoldingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      required this.statusDate,
      required final List<InvoiceItem> items,
      required this.serialNumber,
      required this.stakeholderAddressId,
      required this.stakeholderTelephoneId,
      required this.stakeholderEmailId,
      required this.issueDate,
      required this.status,
      required this.quotationId,
      required this.accountingTypeCode,
      required this.serialNumberId,
      required final List<FileAttachment> attachments,
      required this.subtotalVatAmount})
      : _items = items,
        _attachments = attachments;

  @override
  final UniqueId id;
  @override
  final UniqueId contractId;
  @override
  final String number;
  @override
  final UniqueId stakeholderId;
  @override
  final DateTime dueDate;
  @override
  final DateTime createdDate;
  @override
  final String currencyCode;
  @override
  final double withHoldingTaxesPercentage;
  @override
  final UniqueId fileId;
  @override
  final String additionalInfo;
  @override
  final DateTime statusDate;
  final List<InvoiceItem> _items;
  @override
  List<InvoiceItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final SerialNumber serialNumber;
  @override
  final UniqueId stakeholderAddressId;
  @override
  final UniqueId stakeholderTelephoneId;
  @override
  final UniqueId stakeholderEmailId;
  @override
  final DateTime issueDate;
  @override
  final InvoiceStatus status;
  @override
  final UniqueId quotationId;
  @override
  final String accountingTypeCode;
  @override
  final UniqueId serialNumberId;
  final List<FileAttachment> _attachments;
  @override
  List<FileAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

// Todo(jesus): change to dto from bfmf
  @override
  final dynamic subtotalVatAmount;

  @override
  String toString() {
    return 'DetailedInvoice(id: $id, contractId: $contractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, items: $items, serialNumber: $serialNumber, stakeholderAddressId: $stakeholderAddressId, stakeholderTelephoneId: $stakeholderTelephoneId, stakeholderEmailId: $stakeholderEmailId, issueDate: $issueDate, status: $status, quotationId: $quotationId, accountingTypeCode: $accountingTypeCode, serialNumberId: $serialNumberId, attachments: $attachments, subtotalVatAmount: $subtotalVatAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
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
  _$$DetailedInvoiceImplCopyWith<_$DetailedInvoiceImpl> get copyWith =>
      __$$DetailedInvoiceImplCopyWithImpl<_$DetailedInvoiceImpl>(
          this, _$identity);
}

abstract class _DetailedInvoice implements DetailedInvoice {
  const factory _DetailedInvoice(
      {required final UniqueId id,
      required final UniqueId contractId,
      required final String number,
      required final UniqueId stakeholderId,
      required final DateTime dueDate,
      required final DateTime createdDate,
      required final String currencyCode,
      required final double withHoldingTaxesPercentage,
      required final UniqueId fileId,
      required final String additionalInfo,
      required final DateTime statusDate,
      required final List<InvoiceItem> items,
      required final SerialNumber serialNumber,
      required final UniqueId stakeholderAddressId,
      required final UniqueId stakeholderTelephoneId,
      required final UniqueId stakeholderEmailId,
      required final DateTime issueDate,
      required final InvoiceStatus status,
      required final UniqueId quotationId,
      required final String accountingTypeCode,
      required final UniqueId serialNumberId,
      required final List<FileAttachment> attachments,
      required final dynamic subtotalVatAmount}) = _$DetailedInvoiceImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get contractId;
  @override
  String get number;
  @override
  UniqueId get stakeholderId;
  @override
  DateTime get dueDate;
  @override
  DateTime get createdDate;
  @override
  String get currencyCode;
  @override
  double get withHoldingTaxesPercentage;
  @override
  UniqueId get fileId;
  @override
  String get additionalInfo;
  @override
  DateTime get statusDate;
  @override
  List<InvoiceItem> get items;
  @override
  SerialNumber get serialNumber;
  @override
  UniqueId get stakeholderAddressId;
  @override
  UniqueId get stakeholderTelephoneId;
  @override
  UniqueId get stakeholderEmailId;
  @override
  DateTime get issueDate;
  @override
  InvoiceStatus get status;
  @override
  UniqueId get quotationId;
  @override
  String get accountingTypeCode;
  @override
  UniqueId get serialNumberId;
  @override
  List<FileAttachment> get attachments;
  @override // Todo(jesus): change to dto from bfmf
  dynamic get subtotalVatAmount;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceImplCopyWith<_$DetailedInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
