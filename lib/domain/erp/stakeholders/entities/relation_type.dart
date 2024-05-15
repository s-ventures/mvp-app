import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/relation_type_dto.dart';

enum RelationType {
  supplier,
  customer,
  both,
}

extension RelationTypeX on RelationType {
  RelationTypeDto toDto() => switch (this) {
        RelationType.supplier => RelationTypeDto.supplier,
        RelationType.customer => RelationTypeDto.customer,
        RelationType.both => RelationTypeDto.both,
      };
}
