import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_code_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';

class LegalStakeholder extends Stakeholder {
  LegalStakeholder(
    UniqueId id,
    String fullName,
    LanguageCodeType languageCode,
    RelationType relation,
    DateTime createDate,
    DocumentCodeType documentCode,
    String documentNumber,
    String additionalInfo,
    bool preferenceTelephone,
    bool preferenceSms,
    bool preferenceEmail,
    bool preferenceWhatsapp,
    bool isFavorite,
  ) : super(
          id: id,
          fullName: fullName,
          languageCode: languageCode,
          relation: relation,
          createDate: createDate,
          documentCode: documentCode,
          documentNumber: documentNumber,
          additionalInfo: additionalInfo,
          preferenceTelephone: preferenceTelephone,
          preferenceSms: preferenceSms,
          preferenceEmail: preferenceEmail,
          preferenceWhatsapp: preferenceWhatsapp,
          isFavorite: isFavorite,
        );
}
