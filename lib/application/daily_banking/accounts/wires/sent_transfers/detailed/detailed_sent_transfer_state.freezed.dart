// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_sent_transfer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedSentTransferState {
  AsyncValue<DetailedSentTransfer> get senttranfer =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedSentTransferStateCopyWith<DetailedSentTransferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedSentTransferStateCopyWith<$Res> {
  factory $DetailedSentTransferStateCopyWith(DetailedSentTransferState value,
          $Res Function(DetailedSentTransferState) then) =
      _$DetailedSentTransferStateCopyWithImpl<$Res, DetailedSentTransferState>;
  @useResult
  $Res call({AsyncValue<DetailedSentTransfer> senttranfer});
}

/// @nodoc
class _$DetailedSentTransferStateCopyWithImpl<$Res,
        $Val extends DetailedSentTransferState>
    implements $DetailedSentTransferStateCopyWith<$Res> {
  _$DetailedSentTransferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senttranfer = null,
  }) {
    return _then(_value.copyWith(
      senttranfer: null == senttranfer
          ? _value.senttranfer
          : senttranfer // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedSentTransfer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedSentTransferStateImplCopyWith<$Res>
    implements $DetailedSentTransferStateCopyWith<$Res> {
  factory _$$DetailedSentTransferStateImplCopyWith(
          _$DetailedSentTransferStateImpl value,
          $Res Function(_$DetailedSentTransferStateImpl) then) =
      __$$DetailedSentTransferStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedSentTransfer> senttranfer});
}

/// @nodoc
class __$$DetailedSentTransferStateImplCopyWithImpl<$Res>
    extends _$DetailedSentTransferStateCopyWithImpl<$Res,
        _$DetailedSentTransferStateImpl>
    implements _$$DetailedSentTransferStateImplCopyWith<$Res> {
  __$$DetailedSentTransferStateImplCopyWithImpl(
      _$DetailedSentTransferStateImpl _value,
      $Res Function(_$DetailedSentTransferStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senttranfer = null,
  }) {
    return _then(_$DetailedSentTransferStateImpl(
      senttranfer: null == senttranfer
          ? _value.senttranfer
          : senttranfer // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedSentTransfer>,
    ));
  }
}

/// @nodoc

class _$DetailedSentTransferStateImpl implements _DetailedSentTransferState {
  const _$DetailedSentTransferStateImpl(
      {this.senttranfer = const AsyncLoading<DetailedSentTransfer>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedSentTransfer> senttranfer;

  @override
  String toString() {
    return 'DetailedSentTransferState(senttranfer: $senttranfer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedSentTransferStateImpl &&
            (identical(other.senttranfer, senttranfer) ||
                other.senttranfer == senttranfer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senttranfer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedSentTransferStateImplCopyWith<_$DetailedSentTransferStateImpl>
      get copyWith => __$$DetailedSentTransferStateImplCopyWithImpl<
          _$DetailedSentTransferStateImpl>(this, _$identity);
}

abstract class _DetailedSentTransferState implements DetailedSentTransferState {
  const factory _DetailedSentTransferState(
          {final AsyncValue<DetailedSentTransfer> senttranfer}) =
      _$DetailedSentTransferStateImpl;

  @override
  AsyncValue<DetailedSentTransfer> get senttranfer;
  @override
  @JsonKey(ignore: true)
  _$$DetailedSentTransferStateImplCopyWith<_$DetailedSentTransferStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
