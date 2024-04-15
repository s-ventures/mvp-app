// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_claim_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedClaimState {
  AsyncValue<DetailedClaim> get claim => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedClaimStateCopyWith<DetailedClaimState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedClaimStateCopyWith<$Res> {
  factory $DetailedClaimStateCopyWith(
          DetailedClaimState value, $Res Function(DetailedClaimState) then) =
      _$DetailedClaimStateCopyWithImpl<$Res, DetailedClaimState>;
  @useResult
  $Res call({AsyncValue<DetailedClaim> claim});
}

/// @nodoc
class _$DetailedClaimStateCopyWithImpl<$Res, $Val extends DetailedClaimState>
    implements $DetailedClaimStateCopyWith<$Res> {
  _$DetailedClaimStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claim = null,
  }) {
    return _then(_value.copyWith(
      claim: null == claim
          ? _value.claim
          : claim // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedClaim>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedClaimStateImplCopyWith<$Res>
    implements $DetailedClaimStateCopyWith<$Res> {
  factory _$$DetailedClaimStateImplCopyWith(_$DetailedClaimStateImpl value,
          $Res Function(_$DetailedClaimStateImpl) then) =
      __$$DetailedClaimStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedClaim> claim});
}

/// @nodoc
class __$$DetailedClaimStateImplCopyWithImpl<$Res>
    extends _$DetailedClaimStateCopyWithImpl<$Res, _$DetailedClaimStateImpl>
    implements _$$DetailedClaimStateImplCopyWith<$Res> {
  __$$DetailedClaimStateImplCopyWithImpl(_$DetailedClaimStateImpl _value,
      $Res Function(_$DetailedClaimStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claim = null,
  }) {
    return _then(_$DetailedClaimStateImpl(
      claim: null == claim
          ? _value.claim
          : claim // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedClaim>,
    ));
  }
}

/// @nodoc

class _$DetailedClaimStateImpl implements _DetailedClaimState {
  const _$DetailedClaimStateImpl(
      {this.claim = const AsyncLoading<DetailedClaim>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedClaim> claim;

  @override
  String toString() {
    return 'DetailedClaimState(claim: $claim)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedClaimStateImpl &&
            (identical(other.claim, claim) || other.claim == claim));
  }

  @override
  int get hashCode => Object.hash(runtimeType, claim);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedClaimStateImplCopyWith<_$DetailedClaimStateImpl> get copyWith =>
      __$$DetailedClaimStateImplCopyWithImpl<_$DetailedClaimStateImpl>(
          this, _$identity);
}

abstract class _DetailedClaimState implements DetailedClaimState {
  const factory _DetailedClaimState({final AsyncValue<DetailedClaim> claim}) =
      _$DetailedClaimStateImpl;

  @override
  AsyncValue<DetailedClaim> get claim;
  @override
  @JsonKey(ignore: true)
  _$$DetailedClaimStateImplCopyWith<_$DetailedClaimStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
