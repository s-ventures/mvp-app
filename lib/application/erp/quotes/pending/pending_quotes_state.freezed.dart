// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_quotes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PendingQuotesState {
  AsyncValue<List<Quotation>> get pendingQuotes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingQuotesStateCopyWith<PendingQuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingQuotesStateCopyWith<$Res> {
  factory $PendingQuotesStateCopyWith(
          PendingQuotesState value, $Res Function(PendingQuotesState) then) =
      _$PendingQuotesStateCopyWithImpl<$Res, PendingQuotesState>;
  @useResult
  $Res call({AsyncValue<List<Quotation>> pendingQuotes});
}

/// @nodoc
class _$PendingQuotesStateCopyWithImpl<$Res, $Val extends PendingQuotesState>
    implements $PendingQuotesStateCopyWith<$Res> {
  _$PendingQuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingQuotes = null,
  }) {
    return _then(_value.copyWith(
      pendingQuotes: null == pendingQuotes
          ? _value.pendingQuotes
          : pendingQuotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendingQuotesStateImplCopyWith<$Res>
    implements $PendingQuotesStateCopyWith<$Res> {
  factory _$$PendingQuotesStateImplCopyWith(_$PendingQuotesStateImpl value,
          $Res Function(_$PendingQuotesStateImpl) then) =
      __$$PendingQuotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Quotation>> pendingQuotes});
}

/// @nodoc
class __$$PendingQuotesStateImplCopyWithImpl<$Res>
    extends _$PendingQuotesStateCopyWithImpl<$Res, _$PendingQuotesStateImpl>
    implements _$$PendingQuotesStateImplCopyWith<$Res> {
  __$$PendingQuotesStateImplCopyWithImpl(_$PendingQuotesStateImpl _value,
      $Res Function(_$PendingQuotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingQuotes = null,
  }) {
    return _then(_$PendingQuotesStateImpl(
      pendingQuotes: null == pendingQuotes
          ? _value.pendingQuotes
          : pendingQuotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
    ));
  }
}

/// @nodoc

class _$PendingQuotesStateImpl implements _PendingQuotesState {
  const _$PendingQuotesStateImpl(
      {this.pendingQuotes = const AsyncLoading<List<Quotation>>()});

  @override
  @JsonKey()
  final AsyncValue<List<Quotation>> pendingQuotes;

  @override
  String toString() {
    return 'PendingQuotesState(pendingQuotes: $pendingQuotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingQuotesStateImpl &&
            (identical(other.pendingQuotes, pendingQuotes) ||
                other.pendingQuotes == pendingQuotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingQuotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingQuotesStateImplCopyWith<_$PendingQuotesStateImpl> get copyWith =>
      __$$PendingQuotesStateImplCopyWithImpl<_$PendingQuotesStateImpl>(
          this, _$identity);
}

abstract class _PendingQuotesState implements PendingQuotesState {
  const factory _PendingQuotesState(
          {final AsyncValue<List<Quotation>> pendingQuotes}) =
      _$PendingQuotesStateImpl;

  @override
  AsyncValue<List<Quotation>> get pendingQuotes;
  @override
  @JsonKey(ignore: true)
  _$$PendingQuotesStateImplCopyWith<_$PendingQuotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
