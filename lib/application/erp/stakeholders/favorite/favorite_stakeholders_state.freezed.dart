// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_stakeholders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteStakeholdersState {
  AsyncValue<List<Stakeholder>> get favoriteStakeholders =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStakeholdersStateCopyWith<FavoriteStakeholdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStakeholdersStateCopyWith<$Res> {
  factory $FavoriteStakeholdersStateCopyWith(FavoriteStakeholdersState value,
          $Res Function(FavoriteStakeholdersState) then) =
      _$FavoriteStakeholdersStateCopyWithImpl<$Res, FavoriteStakeholdersState>;
  @useResult
  $Res call({AsyncValue<List<Stakeholder>> favoriteStakeholders});
}

/// @nodoc
class _$FavoriteStakeholdersStateCopyWithImpl<$Res,
        $Val extends FavoriteStakeholdersState>
    implements $FavoriteStakeholdersStateCopyWith<$Res> {
  _$FavoriteStakeholdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteStakeholders = null,
  }) {
    return _then(_value.copyWith(
      favoriteStakeholders: null == favoriteStakeholders
          ? _value.favoriteStakeholders
          : favoriteStakeholders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Stakeholder>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStakeholdersStateImplCopyWith<$Res>
    implements $FavoriteStakeholdersStateCopyWith<$Res> {
  factory _$$FavoriteStakeholdersStateImplCopyWith(
          _$FavoriteStakeholdersStateImpl value,
          $Res Function(_$FavoriteStakeholdersStateImpl) then) =
      __$$FavoriteStakeholdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Stakeholder>> favoriteStakeholders});
}

/// @nodoc
class __$$FavoriteStakeholdersStateImplCopyWithImpl<$Res>
    extends _$FavoriteStakeholdersStateCopyWithImpl<$Res,
        _$FavoriteStakeholdersStateImpl>
    implements _$$FavoriteStakeholdersStateImplCopyWith<$Res> {
  __$$FavoriteStakeholdersStateImplCopyWithImpl(
      _$FavoriteStakeholdersStateImpl _value,
      $Res Function(_$FavoriteStakeholdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteStakeholders = null,
  }) {
    return _then(_$FavoriteStakeholdersStateImpl(
      favoriteStakeholders: null == favoriteStakeholders
          ? _value.favoriteStakeholders
          : favoriteStakeholders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Stakeholder>>,
    ));
  }
}

/// @nodoc

class _$FavoriteStakeholdersStateImpl implements _FavoriteStakeholdersState {
  const _$FavoriteStakeholdersStateImpl(
      {this.favoriteStakeholders = const AsyncLoading<List<Stakeholder>>()});

  @override
  @JsonKey()
  final AsyncValue<List<Stakeholder>> favoriteStakeholders;

  @override
  String toString() {
    return 'FavoriteStakeholdersState(favoriteStakeholders: $favoriteStakeholders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStakeholdersStateImpl &&
            (identical(other.favoriteStakeholders, favoriteStakeholders) ||
                other.favoriteStakeholders == favoriteStakeholders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteStakeholders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStakeholdersStateImplCopyWith<_$FavoriteStakeholdersStateImpl>
      get copyWith => __$$FavoriteStakeholdersStateImplCopyWithImpl<
          _$FavoriteStakeholdersStateImpl>(this, _$identity);
}

abstract class _FavoriteStakeholdersState implements FavoriteStakeholdersState {
  const factory _FavoriteStakeholdersState(
          {final AsyncValue<List<Stakeholder>> favoriteStakeholders}) =
      _$FavoriteStakeholdersStateImpl;

  @override
  AsyncValue<List<Stakeholder>> get favoriteStakeholders;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStakeholdersStateImplCopyWith<_$FavoriteStakeholdersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
