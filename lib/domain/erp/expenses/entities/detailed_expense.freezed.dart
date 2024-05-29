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
  List<ExpensesItem> get items => throw _privateConstructorUsedError;
  ExpensesSerialNumber get serialNumber => throw _privateConstructorUsedError;
  UniqueId get expenseId => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  double get vatAmount => throw _privateConstructorUsedError;
  double get vatPercentage => throw _privateConstructorUsedError;
  ExpensesStatus get status => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  List<ExpensesPayment> get payments => throw _privateConstructorUsedError;
  List<ExpensesAttachment> get attachments =>
      throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get documentTypeCode => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  dynamic get subtotalVatAmount => throw _privateConstructorUsedError;

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
      {UniqueId erpContractId,
      String number,
      UniqueId stakeholderId,
      DateTime dueDate,
      DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      UniqueId fileId,
      String additionalInfo,
      DateTime statusDate,
      List<ExpensesItem> items,
      ExpensesSerialNumber serialNumber,
      UniqueId expenseId,
      DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      ExpensesStatus status,
      String accountingTypeCode,
      List<ExpensesPayment> payments,
      List<ExpensesAttachment> attachments,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      dynamic subtotalVatAmount});

  $ExpensesSerialNumberCopyWith<$Res> get serialNumber;
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
    Object? items = null,
    Object? serialNumber = null,
    Object? expenseId = null,
    Object? issueDate = null,
    Object? vatAmount = null,
    Object? vatPercentage = null,
    Object? status = null,
    Object? accountingTypeCode = null,
    Object? payments = null,
    Object? attachments = null,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
    Object? subtotalVatAmount = freezed,
  }) {
    return _then(_value.copyWith(
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpensesItem>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as ExpensesSerialNumber,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpensesStatus,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesPayment>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesAttachment>,
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
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpensesSerialNumberCopyWith<$Res> get serialNumber {
    return $ExpensesSerialNumberCopyWith<$Res>(_value.serialNumber, (value) {
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
      {UniqueId erpContractId,
      String number,
      UniqueId stakeholderId,
      DateTime dueDate,
      DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      UniqueId fileId,
      String additionalInfo,
      DateTime statusDate,
      List<ExpensesItem> items,
      ExpensesSerialNumber serialNumber,
      UniqueId expenseId,
      DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      ExpensesStatus status,
      String accountingTypeCode,
      List<ExpensesPayment> payments,
      List<ExpensesAttachment> attachments,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      dynamic subtotalVatAmount});

  @override
  $ExpensesSerialNumberCopyWith<$Res> get serialNumber;
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
    Object? items = null,
    Object? serialNumber = null,
    Object? expenseId = null,
    Object? issueDate = null,
    Object? vatAmount = null,
    Object? vatPercentage = null,
    Object? status = null,
    Object? accountingTypeCode = null,
    Object? payments = null,
    Object? attachments = null,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
    Object? subtotalVatAmount = freezed,
  }) {
    return _then(_$DetailedExpenseImpl(
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpensesItem>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as ExpensesSerialNumber,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpensesStatus,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesPayment>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesAttachment>,
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
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DetailedExpenseImpl implements _DetailedExpense {
  const _$DetailedExpenseImpl(
      {required this.erpContractId,
      required this.number,
      required this.stakeholderId,
      required this.dueDate,
      required this.createdDate,
      required this.currencyCode,
      required this.withHoldingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      required this.statusDate,
      required final List<ExpensesItem> items,
      required this.serialNumber,
      required this.expenseId,
      required this.issueDate,
      required this.vatAmount,
      required this.vatPercentage,
      required this.status,
      required this.accountingTypeCode,
      required final List<ExpensesPayment> payments,
      required final List<ExpensesAttachment> attachments,
      required this.fullName,
      required this.documentTypeCode,
      required this.documentNumber,
      required this.subtotalVatAmount})
      : _items = items,
        _payments = payments,
        _attachments = attachments;

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
  final List<ExpensesItem> _items;
  @override
  List<ExpensesItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final ExpensesSerialNumber serialNumber;
  @override
  final UniqueId expenseId;
  @override
  final DateTime issueDate;
  @override
  final double vatAmount;
  @override
  final double vatPercentage;
  @override
  final ExpensesStatus status;
  @override
  final String accountingTypeCode;
  final List<ExpensesPayment> _payments;
  @override
  List<ExpensesPayment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  final List<ExpensesAttachment> _attachments;
  @override
  List<ExpensesAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String fullName;
  @override
  final String documentTypeCode;
  @override
  final String documentNumber;
  @override
  final dynamic subtotalVatAmount;

  @override
  String toString() {
    return 'DetailedExpense(erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, items: $items, serialNumber: $serialNumber, expenseId: $expenseId, issueDate: $issueDate, vatAmount: $vatAmount, vatPercentage: $vatPercentage, status: $status, accountingTypeCode: $accountingTypeCode, payments: $payments, attachments: $attachments, fullName: $fullName, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber, subtotalVatAmount: $subtotalVatAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedExpenseImpl &&
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
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountingTypeCode, accountingTypeCode) ||
                other.accountingTypeCode == accountingTypeCode) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            const DeepCollectionEquality()
                .equals(other.subtotalVatAmount, subtotalVatAmount));
  }

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
        const DeepCollectionEquality().hash(_items),
        serialNumber,
        expenseId,
        issueDate,
        vatAmount,
        vatPercentage,
        status,
        accountingTypeCode,
        const DeepCollectionEquality().hash(_payments),
        const DeepCollectionEquality().hash(_attachments),
        fullName,
        documentTypeCode,
        documentNumber,
        const DeepCollectionEquality().hash(subtotalVatAmount)
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
      {required final UniqueId erpContractId,
      required final String number,
      required final UniqueId stakeholderId,
      required final DateTime dueDate,
      required final DateTime createdDate,
      required final String currencyCode,
      required final double withHoldingTaxesPercentage,
      required final UniqueId fileId,
      required final String additionalInfo,
      required final DateTime statusDate,
      required final List<ExpensesItem> items,
      required final ExpensesSerialNumber serialNumber,
      required final UniqueId expenseId,
      required final DateTime issueDate,
      required final double vatAmount,
      required final double vatPercentage,
      required final ExpensesStatus status,
      required final String accountingTypeCode,
      required final List<ExpensesPayment> payments,
      required final List<ExpensesAttachment> attachments,
      required final String fullName,
      required final String documentTypeCode,
      required final String documentNumber,
      required final dynamic subtotalVatAmount}) = _$DetailedExpenseImpl;

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
  List<ExpensesItem> get items;
  @override
  ExpensesSerialNumber get serialNumber;
  @override
  UniqueId get expenseId;
  @override
  DateTime get issueDate;
  @override
  double get vatAmount;
  @override
  double get vatPercentage;
  @override
  ExpensesStatus get status;
  @override
  String get accountingTypeCode;
  @override
  List<ExpensesPayment> get payments;
  @override
  List<ExpensesAttachment> get attachments;
  @override
  String get fullName;
  @override
  String get documentTypeCode;
  @override
  String get documentNumber;
  @override
  dynamic get subtotalVatAmount;
  @override
  @JsonKey(ignore: true)
  _$$DetailedExpenseImplCopyWith<_$DetailedExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
