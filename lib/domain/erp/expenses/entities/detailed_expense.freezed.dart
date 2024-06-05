// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedExpense {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get erpContractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  UniqueId get stakeholderId => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  double get withHoldingTaxesPercentage => throw _privateConstructorUsedError;
  UniqueId get fileId => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  DateTime get statusDate => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  double get vatAmount => throw _privateConstructorUsedError;
  double get vatPercentage => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  String get fullName =>
      throw _privateConstructorUsedError; // Todo(jesus): Change to DocumentTypeCode
  String get documentTypeCode => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  ExpenseStatus get status => throw _privateConstructorUsedError;
  List<ExpenseItem> get items =>
      throw _privateConstructorUsedError; // Todo(jesus): Change to SubtotalVatAmount
  dynamic get subtotalVatAmount => throw _privateConstructorUsedError;
  SerialNumber get serialNumber => throw _privateConstructorUsedError;
  List<Payment> get payments => throw _privateConstructorUsedError;
  List<FileAttachment> get attachments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedExpenseCopyWith<DetailedExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedExpenseCopyWith<$Res> {
  factory $DetailedExpenseCopyWith(
          DetailedExpense value, $Res Function(DetailedExpense) then) =
      _$DetailedExpenseCopyWithImpl<$Res, DetailedExpense>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId erpContractId,
      String number,
      UniqueId stakeholderId,
      DateTime dueDate,
      DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      UniqueId fileId,
      String additionalInfo,
      DateTime statusDate,
      DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      String accountingTypeCode,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      ExpenseStatus status,
      List<ExpenseItem> items,
      dynamic subtotalVatAmount,
      SerialNumber serialNumber,
      List<Payment> payments,
      List<FileAttachment> attachments});

  $SerialNumberCopyWith<$Res> get serialNumber;
}

/// @nodoc
class _$DetailedExpenseCopyWithImpl<$Res, $Val extends DetailedExpense>
    implements $DetailedExpenseCopyWith<$Res> {
  _$DetailedExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? issueDate = null,
    Object? vatAmount = null,
    Object? vatPercentage = null,
    Object? accountingTypeCode = null,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
    Object? status = null,
    Object? items = null,
    Object? subtotalVatAmount = freezed,
    Object? serialNumber = null,
    Object? payments = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
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
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      vatPercentage: null == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpenseItem>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumber,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
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
abstract class _$$DetailedExpenseImplCopyWith<$Res>
    implements $DetailedExpenseCopyWith<$Res> {
  factory _$$DetailedExpenseImplCopyWith(_$DetailedExpenseImpl value,
          $Res Function(_$DetailedExpenseImpl) then) =
      __$$DetailedExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId erpContractId,
      String number,
      UniqueId stakeholderId,
      DateTime dueDate,
      DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      UniqueId fileId,
      String additionalInfo,
      DateTime statusDate,
      DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      String accountingTypeCode,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      ExpenseStatus status,
      List<ExpenseItem> items,
      dynamic subtotalVatAmount,
      SerialNumber serialNumber,
      List<Payment> payments,
      List<FileAttachment> attachments});

  @override
  $SerialNumberCopyWith<$Res> get serialNumber;
}

/// @nodoc
class __$$DetailedExpenseImplCopyWithImpl<$Res>
    extends _$DetailedExpenseCopyWithImpl<$Res, _$DetailedExpenseImpl>
    implements _$$DetailedExpenseImplCopyWith<$Res> {
  __$$DetailedExpenseImplCopyWithImpl(
      _$DetailedExpenseImpl _value, $Res Function(_$DetailedExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? issueDate = null,
    Object? vatAmount = null,
    Object? vatPercentage = null,
    Object? accountingTypeCode = null,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
    Object? status = null,
    Object? items = null,
    Object? subtotalVatAmount = freezed,
    Object? serialNumber = null,
    Object? payments = null,
    Object? attachments = null,
  }) {
    return _then(_$DetailedExpenseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
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
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      vatPercentage: null == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpenseItem>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumber,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
    ));
  }
}

/// @nodoc

class _$DetailedExpenseImpl implements _DetailedExpense {
  const _$DetailedExpenseImpl(
      {required this.id,
      required this.erpContractId,
      required this.number,
      required this.stakeholderId,
      required this.dueDate,
      required this.createdDate,
      required this.currencyCode,
      required this.withHoldingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      required this.statusDate,
      required this.issueDate,
      required this.vatAmount,
      required this.vatPercentage,
      required this.accountingTypeCode,
      required this.fullName,
      required this.documentTypeCode,
      required this.documentNumber,
      required this.status,
      required final List<ExpenseItem> items,
      required this.subtotalVatAmount,
      required this.serialNumber,
      required final List<Payment> payments,
      required final List<FileAttachment> attachments})
      : _items = items,
        _payments = payments,
        _attachments = attachments;

  @override
  final UniqueId id;
  @override
  final UniqueId erpContractId;
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
  @override
  final DateTime issueDate;
  @override
  final double vatAmount;
  @override
  final double vatPercentage;
  @override
  final String accountingTypeCode;
  @override
  final String fullName;
// Todo(jesus): Change to DocumentTypeCode
  @override
  final String documentTypeCode;
  @override
  final String documentNumber;
  @override
  final ExpenseStatus status;
  final List<ExpenseItem> _items;
  @override
  List<ExpenseItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

// Todo(jesus): Change to SubtotalVatAmount
  @override
  final dynamic subtotalVatAmount;
  @override
  final SerialNumber serialNumber;
  final List<Payment> _payments;
  @override
  List<Payment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  final List<FileAttachment> _attachments;
  @override
  List<FileAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'DetailedExpense(id: $id, erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, issueDate: $issueDate, vatAmount: $vatAmount, vatPercentage: $vatPercentage, accountingTypeCode: $accountingTypeCode, fullName: $fullName, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber, status: $status, items: $items, subtotalVatAmount: $subtotalVatAmount, serialNumber: $serialNumber, payments: $payments, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedExpenseImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.accountingTypeCode, accountingTypeCode) ||
                other.accountingTypeCode == accountingTypeCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.subtotalVatAmount, subtotalVatAmount) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
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
        issueDate,
        vatAmount,
        vatPercentage,
        accountingTypeCode,
        fullName,
        documentTypeCode,
        documentNumber,
        status,
        const DeepCollectionEquality().hash(_items),
        const DeepCollectionEquality().hash(subtotalVatAmount),
        serialNumber,
        const DeepCollectionEquality().hash(_payments),
        const DeepCollectionEquality().hash(_attachments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedExpenseImplCopyWith<_$DetailedExpenseImpl> get copyWith =>
      __$$DetailedExpenseImplCopyWithImpl<_$DetailedExpenseImpl>(
          this, _$identity);
}

abstract class _DetailedExpense implements DetailedExpense {
  const factory _DetailedExpense(
      {required final UniqueId id,
      required final UniqueId erpContractId,
      required final String number,
      required final UniqueId stakeholderId,
      required final DateTime dueDate,
      required final DateTime createdDate,
      required final String currencyCode,
      required final double withHoldingTaxesPercentage,
      required final UniqueId fileId,
      required final String additionalInfo,
      required final DateTime statusDate,
      required final DateTime issueDate,
      required final double vatAmount,
      required final double vatPercentage,
      required final String accountingTypeCode,
      required final String fullName,
      required final String documentTypeCode,
      required final String documentNumber,
      required final ExpenseStatus status,
      required final List<ExpenseItem> items,
      required final dynamic subtotalVatAmount,
      required final SerialNumber serialNumber,
      required final List<Payment> payments,
      required final List<FileAttachment> attachments}) = _$DetailedExpenseImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get erpContractId;
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
  DateTime get issueDate;
  @override
  double get vatAmount;
  @override
  double get vatPercentage;
  @override
  String get accountingTypeCode;
  @override
  String get fullName;
  @override // Todo(jesus): Change to DocumentTypeCode
  String get documentTypeCode;
  @override
  String get documentNumber;
  @override
  ExpenseStatus get status;
  @override
  List<ExpenseItem> get items;
  @override // Todo(jesus): Change to SubtotalVatAmount
  dynamic get subtotalVatAmount;
  @override
  SerialNumber get serialNumber;
  @override
  List<Payment> get payments;
  @override
  List<FileAttachment> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$DetailedExpenseImplCopyWith<_$DetailedExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
