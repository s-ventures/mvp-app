import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/legal_form_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';

class LegalStakeholder extends Stakeholder {
  LegalStakeholder({
    required super.id,
    required super.fullName,
    required super.languageCode,
    required super.relation,
    required super.createDate,
    required super.documentCode,
    required super.documentNumber,
    required super.additionalInfo,
    required super.preferenceTelephone,
    required super.preferenceSms,
    required super.preferenceEmail,
    required super.preferenceWhatsapp,
    required super.isFavorite,
    required this.legalName,
    required this.comercialName,
    required this.constitutionDate,
    required this.constitutionCountryCode,
    required this.legalFormCode,
    required this.nationalityCountryCode,
    required this.economicActivityCode,
    required this.typeCode,
    required this.closureDate,
    super.personTypeCode = PersonTypeCode.legal,
  });

  final String legalName;
  final String comercialName;
  final DateTime constitutionDate;
  final String constitutionCountryCode;
  final LegalFormCode legalFormCode;
  final String nationalityCountryCode;
  final String economicActivityCode;
  final String typeCode;
  final DateTime closureDate;
}
