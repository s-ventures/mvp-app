import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';
import 'package:ui_kit/ui_kit.dart';

extension StakeholdersRelationTypeColorX on RelationType {
  Color textColor(BuildContext context) {
    switch (this) {
      case RelationType.customer:
        return context.color.customerForeground;
      case RelationType.supplier:
        return context.color.supplierForeground;
      // TODO(georgeta): Comprobar color para el caso de Ambos
      case RelationType.both:
        return context.color.neutralLight500;
    }
  }

  Color backgroundColor(BuildContext context) {
    switch (this) {
      case RelationType.customer:
        return context.color.customerBackground;
      case RelationType.supplier:
        return context.color.supplierBackground;
      // TODO(georgeta): Comprobar color para el caso de Ambos
      case RelationType.both:
        return context.color.neutralLight100;
    }
  }
}
