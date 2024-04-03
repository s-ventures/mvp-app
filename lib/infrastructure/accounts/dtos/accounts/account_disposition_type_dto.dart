// [ INDIVIDUAL, CONCURRENT, SOLIDARY ]

import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum AccountDispositionTypeDto {
  individual,
  concurrent,
  solidary,
}
