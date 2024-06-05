// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Expense {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get erpContractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  DateTime? get issueDate => throw _privateConstructorUsedError;
  DateTime? get statusDate => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  ExpenseStatus get status => throw _privateConstructorUsedError;
  DocumentTypeCode get documentTypeCode => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId erpContractId,
      String number,
      double totalAmount,
      DateTime? dueDate,
      DateTime createdDate,
      DateTime? issueDate,
      DateTime? statusDate,
      String fullName,
      ExpenseStatus status,
      DocumentTypeCode documentTypeCode,
      String documentNumber});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

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
    Object? totalAmount = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? issueDate = freezed,
    Object? statusDate = freezed,
    Object? fullName = null,
    Object? status = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCode,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseImplCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$ExpenseImplCopyWith(
          _$ExpenseImpl value, $Res Function(_$ExpenseImpl) then) =
      __$$ExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId erpContractId,
      String number,
      double totalAmount,
      DateTime? dueDate,
      DateTime createdDate,
      DateTime? issueDate,
      DateTime? statusDate,
      String fullName,
      ExpenseStatus status,
      DocumentTypeCode documentTypeCode,
      String documentNumber});
}

/// @nodoc
class __$$ExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$ExpenseImpl>
    implements _$$ExpenseImplCopyWith<$Res> {
  __$$ExpenseImplCopyWithImpl(
      _$ExpenseImpl _value, $Res Function(_$ExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? erpContractId = null,
    Object? number = null,
    Object? totalAmount = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? issueDate = freezed,
    Object? statusDate = freezed,
    Object? fullName = null,
    Object? status = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_$ExpenseImpl(
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCode,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExpenseImpl implements _Expense {
  const _$ExpenseImpl(
      {required this.id,
      required this.erpContractId,
      required this.number,
      required this.totalAmount,
      required this.dueDate,
      required this.createdDate,
      required this.issueDate,
      required this.statusDate,
      required this.fullName,
      required this.status,
      required this.documentTypeCode,
      required this.documentNumber});

  @override
  final UniqueId id;
  @override
  final UniqueId erpContractId;
  @override
  final String number;
  @override
  final double totalAmount;
  @override
  final DateTime? dueDate;
  @override
  final DateTime createdDate;
  @override
  final DateTime? issueDate;
  @override
  final DateTime? statusDate;
  @override
  final String fullName;
  @override
  final ExpenseStatus status;
  @override
  final DocumentTypeCode documentTypeCode;
  @override
  final String documentNumber;

  @override
  String toString() {
    return 'Expense(id: $id, erpContractId: $erpContractId, number: $number, totalAmount: $totalAmount, dueDate: $dueDate, createdDate: $createdDate, issueDate: $issueDate, statusDate: $statusDate, fullName: $fullName, status: $status, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      erpContractId,
      number,
      totalAmount,
      dueDate,
      createdDate,
      issueDate,
      statusDate,
      fullName,
      status,
      documentTypeCode,
      documentNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      __$$ExpenseImplCopyWithImpl<_$ExpenseImpl>(this, _$identity);
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {required final UniqueId id,
      required final UniqueId erpContractId,
      required final String number,
      required final double totalAmount,
      required final DateTime? dueDate,
      required final DateTime createdDate,
      required final DateTime? issueDate,
      required final DateTime? statusDate,
      required final String fullName,
      required final ExpenseStatus status,
      required final DocumentTypeCode documentTypeCode,
      required final String documentNumber}) = _$ExpenseImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get erpContractId;
  @override
  String get number;
  @override
  double get totalAmount;
  @override
  DateTime? get dueDate;
  @override
  DateTime get createdDate;
  @override
  DateTime? get issueDate;
  @override
  DateTime? get statusDate;
  @override
  String get fullName;
  @override
  ExpenseStatus get status;
  @override
  DocumentTypeCode get documentTypeCode;
  @override
  String get documentNumber;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
