// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregated_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AggregatedProductDto _$AggregatedProductDtoFromJson(Map<String, dynamic> json) {
  return _AggregatedProductDto.fromJson(json);
}

/// @nodoc
mixin _$AggregatedProductDto {
  String get id => throw _privateConstructorUsedError;
  String get financialInstitutionId => throw _privateConstructorUsedError;
  String get financialInstitutionName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  TypeDto get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregatedProductDtoCopyWith<AggregatedProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregatedProductDtoCopyWith<$Res> {
  factory $AggregatedProductDtoCopyWith(AggregatedProductDto value,
          $Res Function(AggregatedProductDto) then) =
      _$AggregatedProductDtoCopyWithImpl<$Res, AggregatedProductDto>;
  @useResult
  $Res call(
      {String id,
      String financialInstitutionId,
      String financialInstitutionName,
      String name,
      TypeDto type});
}

/// @nodoc
class _$AggregatedProductDtoCopyWithImpl<$Res,
        $Val extends AggregatedProductDto>
    implements $AggregatedProductDtoCopyWith<$Res> {
  _$AggregatedProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? financialInstitutionId = null,
    Object? financialInstitutionName = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      financialInstitutionId: null == financialInstitutionId
          ? _value.financialInstitutionId
          : financialInstitutionId // ignore: cast_nullable_to_non_nullable
              as String,
      financialInstitutionName: null == financialInstitutionName
          ? _value.financialInstitutionName
          : financialInstitutionName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AggregatedProductDtoImplCopyWith<$Res>
    implements $AggregatedProductDtoCopyWith<$Res> {
  factory _$$AggregatedProductDtoImplCopyWith(_$AggregatedProductDtoImpl value,
          $Res Function(_$AggregatedProductDtoImpl) then) =
      __$$AggregatedProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String financialInstitutionId,
      String financialInstitutionName,
      String name,
      TypeDto type});
}

/// @nodoc
class __$$AggregatedProductDtoImplCopyWithImpl<$Res>
    extends _$AggregatedProductDtoCopyWithImpl<$Res, _$AggregatedProductDtoImpl>
    implements _$$AggregatedProductDtoImplCopyWith<$Res> {
  __$$AggregatedProductDtoImplCopyWithImpl(_$AggregatedProductDtoImpl _value,
      $Res Function(_$AggregatedProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? financialInstitutionId = null,
    Object? financialInstitutionName = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$AggregatedProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      financialInstitutionId: null == financialInstitutionId
          ? _value.financialInstitutionId
          : financialInstitutionId // ignore: cast_nullable_to_non_nullable
              as String,
      financialInstitutionName: null == financialInstitutionName
          ? _value.financialInstitutionName
          : financialInstitutionName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AggregatedProductDtoImpl implements _AggregatedProductDto {
  const _$AggregatedProductDtoImpl(
      {required this.id,
      required this.financialInstitutionId,
      required this.financialInstitutionName,
      required this.name,
      required this.type});

  factory _$AggregatedProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregatedProductDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String financialInstitutionId;
  @override
  final String financialInstitutionName;
  @override
  final String name;
  @override
  final TypeDto type;

  @override
  String toString() {
    return 'AggregatedProductDto(id: $id, financialInstitutionId: $financialInstitutionId, financialInstitutionName: $financialInstitutionName, name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregatedProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.financialInstitutionId, financialInstitutionId) ||
                other.financialInstitutionId == financialInstitutionId) &&
            (identical(
                    other.financialInstitutionName, financialInstitutionName) ||
                other.financialInstitutionName == financialInstitutionName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, financialInstitutionId,
      financialInstitutionName, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregatedProductDtoImplCopyWith<_$AggregatedProductDtoImpl>
      get copyWith =>
          __$$AggregatedProductDtoImplCopyWithImpl<_$AggregatedProductDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregatedProductDtoImplToJson(
      this,
    );
  }
}

abstract class _AggregatedProductDto implements AggregatedProductDto {
  const factory _AggregatedProductDto(
      {required final String id,
      required final String financialInstitutionId,
      required final String financialInstitutionName,
      required final String name,
      required final TypeDto type}) = _$AggregatedProductDtoImpl;

  factory _AggregatedProductDto.fromJson(Map<String, dynamic> json) =
      _$AggregatedProductDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get financialInstitutionId;
  @override
  String get financialInstitutionName;
  @override
  String get name;
  @override
  TypeDto get type;
  @override
  @JsonKey(ignore: true)
  _$$AggregatedProductDtoImplCopyWith<_$AggregatedProductDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
