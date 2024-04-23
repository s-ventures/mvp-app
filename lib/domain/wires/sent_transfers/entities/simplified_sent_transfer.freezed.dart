// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_sent_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedSentTransfer {
  UniqueId get id => throw _privateConstructorUsedError;
  String get beneficiaryName => throw _privateConstructorUsedError;
  String get concept => throw _privateConstructorUsedError;
  double get settlementAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedSentTransferCopyWith<SimplifiedSentTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedSentTransferCopyWith<$Res> {
  factory $SimplifiedSentTransferCopyWith(SimplifiedSentTransfer value,
          $Res Function(SimplifiedSentTransfer) then) =
      _$SimplifiedSentTransferCopyWithImpl<$Res, SimplifiedSentTransfer>;
  @useResult
  $Res call(
      {UniqueId id,
      String beneficiaryName,
      String concept,
      double settlementAmount});
}

/// @nodoc
class _$SimplifiedSentTransferCopyWithImpl<$Res,
        $Val extends SimplifiedSentTransfer>
    implements $SimplifiedSentTransferCopyWith<$Res> {
  _$SimplifiedSentTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beneficiaryName = null,
    Object? concept = null,
    Object? settlementAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      settlementAmount: null == settlementAmount
          ? _value.settlementAmount
          : settlementAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedSentTransferImplCopyWith<$Res>
    implements $SimplifiedSentTransferCopyWith<$Res> {
  factory _$$SimplifiedSentTransferImplCopyWith(
          _$SimplifiedSentTransferImpl value,
          $Res Function(_$SimplifiedSentTransferImpl) then) =
      __$$SimplifiedSentTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String beneficiaryName,
      String concept,
      double settlementAmount});
}

/// @nodoc
class __$$SimplifiedSentTransferImplCopyWithImpl<$Res>
    extends _$SimplifiedSentTransferCopyWithImpl<$Res,
        _$SimplifiedSentTransferImpl>
    implements _$$SimplifiedSentTransferImplCopyWith<$Res> {
  __$$SimplifiedSentTransferImplCopyWithImpl(
      _$SimplifiedSentTransferImpl _value,
      $Res Function(_$SimplifiedSentTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? beneficiaryName = null,
    Object? concept = null,
    Object? settlementAmount = null,
  }) {
    return _then(_$SimplifiedSentTransferImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      settlementAmount: null == settlementAmount
          ? _value.settlementAmount
          : settlementAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SimplifiedSentTransferImpl implements _SimplifiedSentTransfer {
  const _$SimplifiedSentTransferImpl(
      {required this.id,
      required this.beneficiaryName,
      required this.concept,
      required this.settlementAmount});

  @override
  final UniqueId id;
  @override
  final String beneficiaryName;
  @override
  final String concept;
  @override
  final double settlementAmount;

  @override
  String toString() {
    return 'SimplifiedSentTransfer(id: $id, beneficiaryName: $beneficiaryName, concept: $concept, settlementAmount: $settlementAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedSentTransferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.settlementAmount, settlementAmount) ||
                other.settlementAmount == settlementAmount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, beneficiaryName, concept, settlementAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedSentTransferImplCopyWith<_$SimplifiedSentTransferImpl>
      get copyWith => __$$SimplifiedSentTransferImplCopyWithImpl<
          _$SimplifiedSentTransferImpl>(this, _$identity);
}

abstract class _SimplifiedSentTransfer implements SimplifiedSentTransfer {
  const factory _SimplifiedSentTransfer(
      {required final UniqueId id,
      required final String beneficiaryName,
      required final String concept,
      required final double settlementAmount}) = _$SimplifiedSentTransferImpl;

  @override
  UniqueId get id;
  @override
  String get beneficiaryName;
  @override
  String get concept;
  @override
  double get settlementAmount;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedSentTransferImplCopyWith<_$SimplifiedSentTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}
