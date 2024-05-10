// [ SUCCESS, FAILURE ]

import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum StatusDto {
  success,
  failure,
}
