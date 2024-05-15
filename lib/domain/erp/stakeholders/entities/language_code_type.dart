import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/language_code_type_dto.dart';

enum LanguageCodeType {
  spanish,
  catalan,
  basque,
  galician,
  english,
}

extension LanguageCodeTypeX on LanguageCodeType? {
  LanguageCodeTypeDto? toDto() => switch (this) {
        LanguageCodeType.spanish => LanguageCodeTypeDto.spanish,
        LanguageCodeType.catalan => LanguageCodeTypeDto.catalan,
        LanguageCodeType.basque => LanguageCodeTypeDto.basque,
        LanguageCodeType.galician => LanguageCodeTypeDto.galician,
        LanguageCodeType.english => LanguageCodeTypeDto.english,
        null => null,
      };
}
