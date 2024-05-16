import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/legal_form_code.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum LegalFormCodeDto {
  nonProfit,
  partnership,
  limitedPartnership,
  jointProperty,
  cooperative,
  limitedLiabilityCompany,
  corporation,
  other,
}

extension LegalFormCodeDtoX on LegalFormCodeDto {
  LegalFormCode toDomain() => switch (this) {
        LegalFormCodeDto.nonProfit => LegalFormCode.nonProfit,
        LegalFormCodeDto.partnership => LegalFormCode.partnership,
        LegalFormCodeDto.limitedPartnership => LegalFormCode.limitedPartnership,
        LegalFormCodeDto.jointProperty => LegalFormCode.jointProperty,
        LegalFormCodeDto.cooperative => LegalFormCode.cooperative,
        LegalFormCodeDto.limitedLiabilityCompany =>
          LegalFormCode.limitedLiabilityCompany,
        LegalFormCodeDto.corporation => LegalFormCode.corporation,
        LegalFormCodeDto.other => LegalFormCode.other,
      };
}
