import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';

abstract class Stakeholder {
  Stakeholder({
    required this.id,
    required this.personCode,
    required this.fullName,
    required this.languageCode,
    required this.relation,
    required this.createDate,
    required this.documentCode,
    required this.documentNumber,
    required this.additionalInfo,
    required this.preferenceTelephone,
    required this.preferenceSms,
    required this.preferenceEmail,
    required this.preferenceWhatsapp,
    required this.isFavorite,
  });

  final UniqueId id;
  final PersonCode personCode;
  final String fullName;
  final LanguageCode languageCode;
  final RelationType relation;
  final DateTime createDate;
  final DocumentCode documentCode;
  final String documentNumber;
  final String additionalInfo;
  final bool preferenceTelephone;
  final bool preferenceSms;
  final bool preferenceEmail;
  final bool preferenceWhatsapp;
  final bool isFavorite;
}
