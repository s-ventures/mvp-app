// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardContract {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get accountId => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardContractCopyWith<CardContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardContractCopyWith<$Res> {
  factory $CardContractCopyWith(
          CardContract value, $Res Function(CardContract) then) =
      _$CardContractCopyWithImpl<$Res, CardContract>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId accountId,
      DateTime createDate,
      DateTime? endDate});
}

/// @nodoc
class _$CardContractCopyWithImpl<$Res, $Val extends CardContract>
    implements $CardContractCopyWith<$Res> {
  _$CardContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? createDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardContractImplCopyWith<$Res>
    implements $CardContractCopyWith<$Res> {
  factory _$$CardContractImplCopyWith(
          _$CardContractImpl value, $Res Function(_$CardContractImpl) then) =
      __$$CardContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId accountId,
      DateTime createDate,
      DateTime? endDate});
}

/// @nodoc
class __$$CardContractImplCopyWithImpl<$Res>
    extends _$CardContractCopyWithImpl<$Res, _$CardContractImpl>
    implements _$$CardContractImplCopyWith<$Res> {
  __$$CardContractImplCopyWithImpl(
      _$CardContractImpl _value, $Res Function(_$CardContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? createDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_$CardContractImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CardContractImpl implements _CardContract {
  const _$CardContractImpl(
      {required this.id,
      required this.accountId,
      required this.createDate,
      required this.endDate});

  @override
  final UniqueId id;
  @override
  final UniqueId accountId;
  @override
  final DateTime createDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'CardContract(id: $id, accountId: $accountId, createDate: $createDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardContractImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, accountId, createDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardContractImplCopyWith<_$CardContractImpl> get copyWith =>
      __$$CardContractImplCopyWithImpl<_$CardContractImpl>(this, _$identity);
}

abstract class _CardContract implements CardContract {
  const factory _CardContract(
      {required final UniqueId id,
      required final UniqueId accountId,
      required final DateTime createDate,
      required final DateTime? endDate}) = _$CardContractImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get accountId;
  @override
  DateTime get createDate;
  @override
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$CardContractImplCopyWith<_$CardContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
