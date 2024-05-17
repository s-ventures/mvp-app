// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_sent_transfers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedSentTransfersState {
  AsyncValue<List<SimplifiedSentTransfer>> get sentTransfers => throw _privateConstructorUsedError;
  AsyncValue<List<SimplifiedSentTransfer>> get lastSentTransfers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedSentTransfersStateCopyWith<SimplifiedSentTransfersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedSentTransfersStateCopyWith<$Res> {
  factory $SimplifiedSentTransfersStateCopyWith(
          SimplifiedSentTransfersState value, $Res Function(SimplifiedSentTransfersState) then) =
      _$SimplifiedSentTransfersStateCopyWithImpl<$Res, SimplifiedSentTransfersState>;
  @useResult
  $Res call(
      {AsyncValue<List<SimplifiedSentTransfer>> sentTransfers,
      AsyncValue<List<SimplifiedSentTransfer>> lastSentTransfers});
}

/// @nodoc
class _$SimplifiedSentTransfersStateCopyWithImpl<$Res, $Val extends SimplifiedSentTransfersState>
    implements $SimplifiedSentTransfersStateCopyWith<$Res> {
  _$SimplifiedSentTransfersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentTransfers = null,
    Object? lastSentTransfers = null,
  }) {
    return _then(_value.copyWith(
      sentTransfers: null == sentTransfers
          ? _value.sentTransfers
          : sentTransfers // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedSentTransfer>>,
      lastSentTransfers: null == lastSentTransfers
          ? _value.lastSentTransfers
          : lastSentTransfers // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedSentTransfer>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedSentTransfersStateImplCopyWith<$Res>
    implements $SimplifiedSentTransfersStateCopyWith<$Res> {
  factory _$$SimplifiedSentTransfersStateImplCopyWith(_$SimplifiedSentTransfersStateImpl value,
          $Res Function(_$SimplifiedSentTransfersStateImpl) then) =
      __$$SimplifiedSentTransfersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<SimplifiedSentTransfer>> sentTransfers,
      AsyncValue<List<SimplifiedSentTransfer>> lastSentTransfers});
}

/// @nodoc
class __$$SimplifiedSentTransfersStateImplCopyWithImpl<$Res>
    extends _$SimplifiedSentTransfersStateCopyWithImpl<$Res, _$SimplifiedSentTransfersStateImpl>
    implements _$$SimplifiedSentTransfersStateImplCopyWith<$Res> {
  __$$SimplifiedSentTransfersStateImplCopyWithImpl(_$SimplifiedSentTransfersStateImpl _value,
      $Res Function(_$SimplifiedSentTransfersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentTransfers = null,
    Object? lastSentTransfers = null,
  }) {
    return _then(_$SimplifiedSentTransfersStateImpl(
      sentTransfers: null == sentTransfers
          ? _value.sentTransfers
          : sentTransfers // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedSentTransfer>>,
      lastSentTransfers: null == lastSentTransfers
          ? _value.lastSentTransfers
          : lastSentTransfers // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedSentTransfer>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedSentTransfersStateImpl implements _SimplifiedSentTransfersState {
  const _$SimplifiedSentTransfersStateImpl(
      {this.sentTransfers = const AsyncLoading<List<SimplifiedSentTransfer>>(),
      this.lastSentTransfers = const AsyncLoading<List<SimplifiedSentTransfer>>()});

  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedSentTransfer>> sentTransfers;
  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedSentTransfer>> lastSentTransfers;

  @override
  String toString() {
    return 'SimplifiedSentTransfersState(sentTransfers: $sentTransfers, lastSentTransfers: $lastSentTransfers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedSentTransfersStateImpl &&
            (identical(other.sentTransfers, sentTransfers) ||
                other.sentTransfers == sentTransfers) &&
            (identical(other.lastSentTransfers, lastSentTransfers) ||
                other.lastSentTransfers == lastSentTransfers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sentTransfers, lastSentTransfers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedSentTransfersStateImplCopyWith<_$SimplifiedSentTransfersStateImpl> get copyWith =>
      __$$SimplifiedSentTransfersStateImplCopyWithImpl<_$SimplifiedSentTransfersStateImpl>(
          this, _$identity);
}

abstract class _SimplifiedSentTransfersState implements SimplifiedSentTransfersState {
  const factory _SimplifiedSentTransfersState(
          {final AsyncValue<List<SimplifiedSentTransfer>> sentTransfers,
          final AsyncValue<List<SimplifiedSentTransfer>> lastSentTransfers}) =
      _$SimplifiedSentTransfersStateImpl;

  @override
  AsyncValue<List<SimplifiedSentTransfer>> get sentTransfers;
  @override
  AsyncValue<List<SimplifiedSentTransfer>> get lastSentTransfers;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedSentTransfersStateImplCopyWith<_$SimplifiedSentTransfersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
