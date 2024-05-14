import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum LanguageCodeTypeDto {
  spanish,
  catalan,
  basque,
  galician,
  english,
}

extension LanguageCodeTypeDtoExtension on LanguageCodeTypeDto {
  LanguageCodeType toDomain() => switch (this) {
        LanguageCodeTypeDto.spanish => LanguageCodeType.spanish,
        LanguageCodeTypeDto.catalan => LanguageCodeType.catalan,
        LanguageCodeTypeDto.basque => LanguageCodeType.basque,
        LanguageCodeTypeDto.galician => LanguageCodeType.galician,
        LanguageCodeTypeDto.english => LanguageCodeType.english,
      };
}
