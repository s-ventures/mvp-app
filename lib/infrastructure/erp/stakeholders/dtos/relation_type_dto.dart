import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum RelationTypeDto {
  supplier,
  customer,
  both,
}

extension RelationTypeDtoX on RelationTypeDto {
  RelationType toDomain() => switch (this) {
        RelationTypeDto.supplier => RelationType.supplier,
        RelationTypeDto.customer => RelationType.customer,
        RelationTypeDto.both => RelationType.both,
      };
}
