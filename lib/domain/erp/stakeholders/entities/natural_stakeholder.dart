import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/employment_status.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/gender.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/marital_status.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/matrimonial_regime.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';

class NaturalStakeholder extends Stakeholder {
  NaturalStakeholder({
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
    required this.name,
    required this.surname1,
    required this.surname2,
    required this.birthDate,
    required this.birthCountryCode,
    required this.nationalityCountryCode,
    required this.residenceCountryCode,
    required this.residenceIndicator,
    required this.gender,
    required this.maritalStatus,
    required this.matrimonialRegime,
    required this.deathDate,
    required this.employmentStatus,
    required this.personOcuppationCode,
    required this.sector,
    required this.econimicActivityCode,
    super.personCode = PersonCode.natural,
  });

  final String name;
  final String surname1;
  final String surname2;
  final DateTime birthDate;
  final String birthCountryCode;
  final String nationalityCountryCode;
  final String residenceCountryCode;
  final bool residenceIndicator;
  final Gender gender;
  final MaritalStatus maritalStatus;
  final MatrimonialRegime matrimonialRegime;
  final DateTime deathDate;
  final EmploymentStatus employmentStatus;
  final String personOcuppationCode;
  final String sector;
  final String econimicActivityCode;
}
