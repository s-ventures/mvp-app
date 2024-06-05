import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:ui_kit/ui_kit.dart';

// TODO(georgeta): Pendiente de definir estados y colores con Negocio
// [ DRAFT, CREATED, SENT, CANCELLED ]

extension QuotationStatusColorX on QuotationStatus {
  String groupedStatus(DateTime? dueDate) {
    switch (this) {
      case QuotationStatus.draft:
        return QuotationStatus.draft.name;
      case QuotationStatus.created:
      case QuotationStatus.sent:
        if (dueDate == null || DateTime.now().isAfter(dueDate)) {
          return 'Vencido';
        } else {
          final days = dueDate.difference(DateTime.now()).inDays;
          return 'Vence en $days días';
        }
      case QuotationStatus.cancelled:
        return QuotationStatus.cancelled.name;
    }
  }

  Color statusColor(DateTime? dueDate, BuildContext context) {
    final status = groupedStatus(dueDate);
    if (status.startsWith('Vence en')) {
      return context.color.statusWarning;
    } else {
      switch (status) {
        case 'Borrador':
          return context.color.secondaryLight800;
        case 'Vencido':
          return context.color.statusError;
        case 'Cancelado':
          return Colors.brown;
        default:
          return Colors.brown;
      }
    }
  }
}
