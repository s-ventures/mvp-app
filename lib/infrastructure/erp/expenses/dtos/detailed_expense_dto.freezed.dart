// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_expense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedExpenseDto _$DetailedExpenseDtoFromJson(Map<String, dynamic> json) {
  return _DetailedExpenseDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedExpenseDto {
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
  List<ExpensesItemDto> get items => throw _privateConstructorUsedError;
  ExpenseSerialNumberDto get serialNumber => throw _privateConstructorUsedError;
  int get expenseId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get issueDate => throw _privateConstructorUsedError;
  double get vatAmount => throw _privateConstructorUsedError;
  double get vatPercentage => throw _privateConstructorUsedError;
  ExpensesStatusDto get status => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  List<ExpensesPaymentDto> get payments => throw _privateConstructorUsedError;
  List<ExpensesAttachmentDto> get attachments =>
      throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get documentTypeCode => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  dynamic get subtotalVatAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedExpenseDtoCopyWith<DetailedExpenseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedExpenseDtoCopyWith<$Res> {
  factory $DetailedExpenseDtoCopyWith(
          DetailedExpenseDto value, $Res Function(DetailedExpenseDto) then) =
      _$DetailedExpenseDtoCopyWithImpl<$Res, DetailedExpenseDto>;
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
      List<ExpensesItemDto> items,
      ExpenseSerialNumberDto serialNumber,
      int expenseId,
      @DateConverter() DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      ExpensesStatusDto status,
      String accountingTypeCode,
      List<ExpensesPaymentDto> payments,
      List<ExpensesAttachmentDto> attachments,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      dynamic subtotalVatAmount});

  $ExpenseSerialNumberDtoCopyWith<$Res> get serialNumber;
}

/// @nodoc
class _$DetailedExpenseDtoCopyWithImpl<$Res, $Val extends DetailedExpenseDto>
    implements $DetailedExpenseDtoCopyWith<$Res> {
  _$DetailedExpenseDtoCopyWithImpl(this._value, this._then);

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
              as List<ExpensesItemDto>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as ExpenseSerialNumberDto,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as ExpensesStatusDto,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesPaymentDto>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesAttachmentDto>,
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
  $ExpenseSerialNumberDtoCopyWith<$Res> get serialNumber {
    return $ExpenseSerialNumberDtoCopyWith<$Res>(_value.serialNumber, (value) {
      return _then(_value.copyWith(serialNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedExpenseDtoImplCopyWith<$Res>
    implements $DetailedExpenseDtoCopyWith<$Res> {
  factory _$$DetailedExpenseDtoImplCopyWith(_$DetailedExpenseDtoImpl value,
          $Res Function(_$DetailedExpenseDtoImpl) then) =
      __$$DetailedExpenseDtoImplCopyWithImpl<$Res>;
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
      List<ExpensesItemDto> items,
      ExpenseSerialNumberDto serialNumber,
      int expenseId,
      @DateConverter() DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      ExpensesStatusDto status,
      String accountingTypeCode,
      List<ExpensesPaymentDto> payments,
      List<ExpensesAttachmentDto> attachments,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      dynamic subtotalVatAmount});

  @override
  $ExpenseSerialNumberDtoCopyWith<$Res> get serialNumber;
}

/// @nodoc
class __$$DetailedExpenseDtoImplCopyWithImpl<$Res>
    extends _$DetailedExpenseDtoCopyWithImpl<$Res, _$DetailedExpenseDtoImpl>
    implements _$$DetailedExpenseDtoImplCopyWith<$Res> {
  __$$DetailedExpenseDtoImplCopyWithImpl(_$DetailedExpenseDtoImpl _value,
      $Res Function(_$DetailedExpenseDtoImpl) _then)
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
    return _then(_$DetailedExpenseDtoImpl(
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpensesItemDto>,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as ExpenseSerialNumberDto,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as ExpensesStatusDto,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesPaymentDto>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<ExpensesAttachmentDto>,
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
@JsonSerializable()
class _$DetailedExpenseDtoImpl implements _DetailedExpenseDto {
  const _$DetailedExpenseDtoImpl(
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
      required final List<ExpensesItemDto> items,
      required this.serialNumber,
      required this.expenseId,
      @DateConverter() required this.issueDate,
      required this.vatAmount,
      required this.vatPercentage,
      required this.status,
      required this.accountingTypeCode,
      required final List<ExpensesPaymentDto> payments,
      required final List<ExpensesAttachmentDto> attachments,
      required this.fullName,
      required this.documentTypeCode,
      required this.documentNumber,
      required this.subtotalVatAmount})
      : _items = items,
        _payments = payments,
        _attachments = attachments;

  factory _$DetailedExpenseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedExpenseDtoImplFromJson(json);

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
  final List<ExpensesItemDto> _items;
  @override
  List<ExpensesItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final ExpenseSerialNumberDto serialNumber;
  @override
  final int expenseId;
  @override
  @DateConverter()
  final DateTime issueDate;
  @override
  final double vatAmount;
  @override
  final double vatPercentage;
  @override
  final ExpensesStatusDto status;
  @override
  final String accountingTypeCode;
  final List<ExpensesPaymentDto> _payments;
  @override
  List<ExpensesPaymentDto> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  final List<ExpensesAttachmentDto> _attachments;
  @override
  List<ExpensesAttachmentDto> get attachments {
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
    return 'DetailedExpenseDto(erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, items: $items, serialNumber: $serialNumber, expenseId: $expenseId, issueDate: $issueDate, vatAmount: $vatAmount, vatPercentage: $vatPercentage, status: $status, accountingTypeCode: $accountingTypeCode, payments: $payments, attachments: $attachments, fullName: $fullName, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber, subtotalVatAmount: $subtotalVatAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedExpenseDtoImpl &&
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
  _$$DetailedExpenseDtoImplCopyWith<_$DetailedExpenseDtoImpl> get copyWith =>
      __$$DetailedExpenseDtoImplCopyWithImpl<_$DetailedExpenseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedExpenseDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedExpenseDto implements DetailedExpenseDto {
  const factory _DetailedExpenseDto(
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
      required final List<ExpensesItemDto> items,
      required final ExpenseSerialNumberDto serialNumber,
      required final int expenseId,
      @DateConverter() required final DateTime issueDate,
      required final double vatAmount,
      required final double vatPercentage,
      required final ExpensesStatusDto status,
      required final String accountingTypeCode,
      required final List<ExpensesPaymentDto> payments,
      required final List<ExpensesAttachmentDto> attachments,
      required final String fullName,
      required final String documentTypeCode,
      required final String documentNumber,
      required final dynamic subtotalVatAmount}) = _$DetailedExpenseDtoImpl;

  factory _DetailedExpenseDto.fromJson(Map<String, dynamic> json) =
      _$DetailedExpenseDtoImpl.fromJson;

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
  List<ExpensesItemDto> get items;
  @override
  ExpenseSerialNumberDto get serialNumber;
  @override
  int get expenseId;
  @override
  @DateConverter()
  DateTime get issueDate;
  @override
  double get vatAmount;
  @override
  double get vatPercentage;
  @override
  ExpensesStatusDto get status;
  @override
  String get accountingTypeCode;
  @override
  List<ExpensesPaymentDto> get payments;
  @override
  List<ExpensesAttachmentDto> get attachments;
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
  _$$DetailedExpenseDtoImplCopyWith<_$DetailedExpenseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
