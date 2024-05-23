// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_claims_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedClaimsState {
  AsyncValue<List<SimplifiedClaim>> get claims =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedClaimsStateCopyWith<SimplifiedClaimsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedClaimsStateCopyWith<$Res> {
  factory $SimplifiedClaimsStateCopyWith(SimplifiedClaimsState value,
          $Res Function(SimplifiedClaimsState) then) =
      _$SimplifiedClaimsStateCopyWithImpl<$Res, SimplifiedClaimsState>;
  @useResult
  $Res call({AsyncValue<List<SimplifiedClaim>> claims});
}

/// @nodoc
class _$SimplifiedClaimsStateCopyWithImpl<$Res,
        $Val extends SimplifiedClaimsState>
    implements $SimplifiedClaimsStateCopyWith<$Res> {
  _$SimplifiedClaimsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claims = null,
  }) {
    return _then(_value.copyWith(
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedClaim>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedClaimsStateImplCopyWith<$Res>
    implements $SimplifiedClaimsStateCopyWith<$Res> {
  factory _$$SimplifiedClaimsStateImplCopyWith(
          _$SimplifiedClaimsStateImpl value,
          $Res Function(_$SimplifiedClaimsStateImpl) then) =
      __$$SimplifiedClaimsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<SimplifiedClaim>> claims});
}

/// @nodoc
class __$$SimplifiedClaimsStateImplCopyWithImpl<$Res>
    extends _$SimplifiedClaimsStateCopyWithImpl<$Res,
        _$SimplifiedClaimsStateImpl>
    implements _$$SimplifiedClaimsStateImplCopyWith<$Res> {
  __$$SimplifiedClaimsStateImplCopyWithImpl(_$SimplifiedClaimsStateImpl _value,
      $Res Function(_$SimplifiedClaimsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claims = null,
  }) {
    return _then(_$SimplifiedClaimsStateImpl(
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedClaim>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedClaimsStateImpl implements _SimplifiedClaimsState {
  const _$SimplifiedClaimsStateImpl(
      {this.claims = const AsyncLoading<List<SimplifiedClaim>>()});

  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedClaim>> claims;

  @override
  String toString() {
    return 'SimplifiedClaimsState(claims: $claims)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedClaimsStateImpl &&
            (identical(other.claims, claims) || other.claims == claims));
  }

  @override
  int get hashCode => Object.hash(runtimeType, claims);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedClaimsStateImplCopyWith<_$SimplifiedClaimsStateImpl>
      get copyWith => __$$SimplifiedClaimsStateImplCopyWithImpl<
          _$SimplifiedClaimsStateImpl>(this, _$identity);
}

abstract class _SimplifiedClaimsState implements SimplifiedClaimsState {
  const factory _SimplifiedClaimsState(
          {final AsyncValue<List<SimplifiedClaim>> claims}) =
      _$SimplifiedClaimsStateImpl;

  @override
  AsyncValue<List<SimplifiedClaim>> get claims;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedClaimsStateImplCopyWith<_$SimplifiedClaimsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
