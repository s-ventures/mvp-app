import 'package:json_annotation/json_annotation.dart';

part 'extended_details_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class ExtendedDetailsDto {
  ExtendedDetailsDto();

  factory ExtendedDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ExtendedDetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedDetailsDtoToJson(this);
}
