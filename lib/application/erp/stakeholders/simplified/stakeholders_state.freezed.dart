// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stakeholders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakeholdersState {
  AsyncValue<List<Stakeholder>> get stakeholders =>
      throw _privateConstructorUsedError;
  AsyncValue<List<Stakeholder>> get favoriteStakeholders =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StakeholdersStateCopyWith<StakeholdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeholdersStateCopyWith<$Res> {
  factory $StakeholdersStateCopyWith(
          StakeholdersState value, $Res Function(StakeholdersState) then) =
      _$StakeholdersStateCopyWithImpl<$Res, StakeholdersState>;
  @useResult
  $Res call(
      {AsyncValue<List<Stakeholder>> stakeholders,
      AsyncValue<List<Stakeholder>> favoriteStakeholders});
}

/// @nodoc
class _$StakeholdersStateCopyWithImpl<$Res, $Val extends StakeholdersState>
    implements $StakeholdersStateCopyWith<$Res> {
  _$StakeholdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeholders = null,
    Object? favoriteStakeholders = null,
  }) {
    return _then(_value.copyWith(
      stakeholders: null == stakeholders
          ? _value.stakeholders
          : stakeholders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Stakeholder>>,
      favoriteStakeholders: null == favoriteStakeholders
          ? _value.favoriteStakeholders
          : favoriteStakeholders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Stakeholder>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StakeholdersStateImplCopyWith<$Res>
    implements $StakeholdersStateCopyWith<$Res> {
  factory _$$StakeholdersStateImplCopyWith(_$StakeholdersStateImpl value,
          $Res Function(_$StakeholdersStateImpl) then) =
      __$$StakeholdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<Stakeholder>> stakeholders,
      AsyncValue<List<Stakeholder>> favoriteStakeholders});
}

/// @nodoc
class __$$StakeholdersStateImplCopyWithImpl<$Res>
    extends _$StakeholdersStateCopyWithImpl<$Res, _$StakeholdersStateImpl>
    implements _$$StakeholdersStateImplCopyWith<$Res> {
  __$$StakeholdersStateImplCopyWithImpl(_$StakeholdersStateImpl _value,
      $Res Function(_$StakeholdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeholders = null,
    Object? favoriteStakeholders = null,
  }) {
    return _then(_$StakeholdersStateImpl(
      stakeholders: null == stakeholders
          ? _value.stakeholders
          : stakeholders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Stakeholder>>,
      favoriteStakeholders: null == favoriteStakeholders
          ? _value.favoriteStakeholders
          : favoriteStakeholders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Stakeholder>>,
    ));
  }
}

/// @nodoc

class _$StakeholdersStateImpl implements _StakeholdersState {
  const _$StakeholdersStateImpl(
      {this.stakeholders = const AsyncLoading<List<Stakeholder>>(),
      this.favoriteStakeholders = const AsyncLoading<List<Stakeholder>>()});

  @override
  @JsonKey()
  final AsyncValue<List<Stakeholder>> stakeholders;
  @override
  @JsonKey()
  final AsyncValue<List<Stakeholder>> favoriteStakeholders;

  @override
  String toString() {
    return 'StakeholdersState(stakeholders: $stakeholders, favoriteStakeholders: $favoriteStakeholders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeholdersStateImpl &&
            (identical(other.stakeholders, stakeholders) ||
                other.stakeholders == stakeholders) &&
            (identical(other.favoriteStakeholders, favoriteStakeholders) ||
                other.favoriteStakeholders == favoriteStakeholders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stakeholders, favoriteStakeholders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeholdersStateImplCopyWith<_$StakeholdersStateImpl> get copyWith =>
      __$$StakeholdersStateImplCopyWithImpl<_$StakeholdersStateImpl>(
          this, _$identity);
}

abstract class _StakeholdersState implements StakeholdersState {
  const factory _StakeholdersState(
          {final AsyncValue<List<Stakeholder>> stakeholders,
          final AsyncValue<List<Stakeholder>> favoriteStakeholders}) =
      _$StakeholdersStateImpl;

  @override
  AsyncValue<List<Stakeholder>> get stakeholders;
  @override
  AsyncValue<List<Stakeholder>> get favoriteStakeholders;
  @override
  @JsonKey(ignore: true)
  _$$StakeholdersStateImplCopyWith<_$StakeholdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
