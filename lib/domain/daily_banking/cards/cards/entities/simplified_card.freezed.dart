// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedCard {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get lastFourDigits => throw _privateConstructorUsedError;
  CardType get type => throw _privateConstructorUsedError;
  CardContract get contract => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedCardCopyWith<SimplifiedCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedCardCopyWith<$Res> {
  factory $SimplifiedCardCopyWith(
          SimplifiedCard value, $Res Function(SimplifiedCard) then) =
      _$SimplifiedCardCopyWithImpl<$Res, SimplifiedCard>;
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String brand,
      String lastFourDigits,
      CardType type,
      CardContract contract});

  $CardContractCopyWith<$Res> get contract;
}

/// @nodoc
class _$SimplifiedCardCopyWithImpl<$Res, $Val extends SimplifiedCard>
    implements $SimplifiedCardCopyWith<$Res> {
  _$SimplifiedCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? lastFourDigits = null,
    Object? type = null,
    Object? contract = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardType,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as CardContract,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardContractCopyWith<$Res> get contract {
    return $CardContractCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimplifiedCardImplCopyWith<$Res>
    implements $SimplifiedCardCopyWith<$Res> {
  factory _$$SimplifiedCardImplCopyWith(_$SimplifiedCardImpl value,
          $Res Function(_$SimplifiedCardImpl) then) =
      __$$SimplifiedCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String name,
      String brand,
      String lastFourDigits,
      CardType type,
      CardContract contract});

  @override
  $CardContractCopyWith<$Res> get contract;
}

/// @nodoc
class __$$SimplifiedCardImplCopyWithImpl<$Res>
    extends _$SimplifiedCardCopyWithImpl<$Res, _$SimplifiedCardImpl>
    implements _$$SimplifiedCardImplCopyWith<$Res> {
  __$$SimplifiedCardImplCopyWithImpl(
      _$SimplifiedCardImpl _value, $Res Function(_$SimplifiedCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? lastFourDigits = null,
    Object? type = null,
    Object? contract = null,
  }) {
    return _then(_$SimplifiedCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardType,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as CardContract,
    ));
  }
}

/// @nodoc

class _$SimplifiedCardImpl implements _SimplifiedCard {
  const _$SimplifiedCardImpl(
      {required this.id,
      required this.name,
      required this.brand,
      required this.lastFourDigits,
      required this.type,
      required this.contract});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String lastFourDigits;
  @override
  final CardType type;
  @override
  final CardContract contract;

  @override
  String toString() {
    return 'SimplifiedCard(id: $id, name: $name, brand: $brand, lastFourDigits: $lastFourDigits, type: $type, contract: $contract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, brand, lastFourDigits, type, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedCardImplCopyWith<_$SimplifiedCardImpl> get copyWith =>
      __$$SimplifiedCardImplCopyWithImpl<_$SimplifiedCardImpl>(
          this, _$identity);
}

abstract class _SimplifiedCard implements SimplifiedCard {
  const factory _SimplifiedCard(
      {required final UniqueId id,
      required final String name,
      required final String brand,
      required final String lastFourDigits,
      required final CardType type,
      required final CardContract contract}) = _$SimplifiedCardImpl;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get brand;
  @override
  String get lastFourDigits;
  @override
  CardType get type;
  @override
  CardContract get contract;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardImplCopyWith<_$SimplifiedCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
