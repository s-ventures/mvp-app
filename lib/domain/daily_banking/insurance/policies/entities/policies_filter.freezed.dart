// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policies_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoliciesFilter {
  DateTime? get createDateFrom => throw _privateConstructorUsedError;
  DateTime? get createDateTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoliciesFilterCopyWith<PoliciesFilter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliciesFilterCopyWith<$Res> {
  factory $PoliciesFilterCopyWith(PoliciesFilter value, $Res Function(PoliciesFilter) then) =
      _$PoliciesFilterCopyWithImpl<$Res, PoliciesFilter>;
  @useResult
  $Res call({DateTime? createDateFrom, DateTime? createDateTo});
}

/// @nodoc
class _$PoliciesFilterCopyWithImpl<$Res, $Val extends PoliciesFilter>
    implements $PoliciesFilterCopyWith<$Res> {
  _$PoliciesFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
  }) {
    return _then(_value.copyWith(
      createDateFrom: freezed == createDateFrom
          ? _value.createDateFrom
          : createDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createDateTo: freezed == createDateTo
          ? _value.createDateTo
          : createDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoliciesFilterImplCopyWith<$Res> implements $PoliciesFilterCopyWith<$Res> {
  factory _$$PoliciesFilterImplCopyWith(
          _$PoliciesFilterImpl value, $Res Function(_$PoliciesFilterImpl) then) =
      __$$PoliciesFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? createDateFrom, DateTime? createDateTo});
}

/// @nodoc
class __$$PoliciesFilterImplCopyWithImpl<$Res>
    extends _$PoliciesFilterCopyWithImpl<$Res, _$PoliciesFilterImpl>
    implements _$$PoliciesFilterImplCopyWith<$Res> {
  __$$PoliciesFilterImplCopyWithImpl(
      _$PoliciesFilterImpl _value, $Res Function(_$PoliciesFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDateFrom = freezed,
    Object? createDateTo = freezed,
  }) {
    return _then(_$PoliciesFilterImpl(
      createDateFrom: freezed == createDateFrom
          ? _value.createDateFrom
          : createDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createDateTo: freezed == createDateTo
          ? _value.createDateTo
          : createDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$PoliciesFilterImpl implements _PoliciesFilter {
  const _$PoliciesFilterImpl({this.createDateFrom, this.createDateTo});

  @override
  final DateTime? createDateFrom;
  @override
  final DateTime? createDateTo;

  @override
  String toString() {
    return 'PoliciesFilter(createDateFrom: $createDateFrom, createDateTo: $createDateTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliciesFilterImpl &&
            (identical(other.createDateFrom, createDateFrom) ||
                other.createDateFrom == createDateFrom) &&
            (identical(other.createDateTo, createDateTo) || other.createDateTo == createDateTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createDateFrom, createDateTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliciesFilterImplCopyWith<_$PoliciesFilterImpl> get copyWith =>
      __$$PoliciesFilterImplCopyWithImpl<_$PoliciesFilterImpl>(this, _$identity);
}

abstract class _PoliciesFilter implements PoliciesFilter {
  const factory _PoliciesFilter({final DateTime? createDateFrom, final DateTime? createDateTo}) =
      _$PoliciesFilterImpl;

  @override
  DateTime? get createDateFrom;
  @override
  DateTime? get createDateTo;
  @override
  @JsonKey(ignore: true)
  _$$PoliciesFilterImplCopyWith<_$PoliciesFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
