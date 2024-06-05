import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:ui_kit/ui_kit.dart';

// TODO(georgeta): Pendiente de definir estados y colores

extension InvoiceStatusColorX on InvoiceStatus {
  String groupedStatus(DateTime? dueDate) {
    switch (this) {
      case InvoiceStatus.draft:
        return InvoiceStatus.draft.name;
      case InvoiceStatus.issued:
      case InvoiceStatus.halfPaid:
        if (dueDate == null || DateTime.now().isAfter(dueDate)) {
          return 'Vencido';
        } else {
          final days = dueDate.difference(DateTime.now()).inDays;
          return 'Vence en $days días';
        }
      case InvoiceStatus.paid:
        return InvoiceStatus.paid.name;
      case InvoiceStatus.cancelled:
        return InvoiceStatus.cancelled.name;
    }
  }

  Color statusColor(DateTime? dueDate, BuildContext context) {
    switch (groupedStatus(dueDate)) {
      case 'Borrador':
        return context.color.secondaryLight800;
      case 'Vencido':
        return context.color.statusError;
      case 'Vence en X días':
        return context.color.statusWarning;
      case 'Cobrado':
        return context.color.statusSuccess;
      case 'Cancelado':
        return Colors.brown;
      default:
        return Colors.brown;
    }
  }
}
