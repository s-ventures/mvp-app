import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';
import 'package:ui_kit/ui_kit.dart';

// TODO(georgeta): Pendiente de definir estados y colores

extension ExpenseStatusColorX on ExpenseStatus {
  String groupedStatus(DateTime? dueDate) {
    switch (this) {
      case ExpenseStatus.draft:
        return ExpenseStatus.draft.name;
      case ExpenseStatus.received:
      case ExpenseStatus.halfPaid:
        if (dueDate == null || DateTime.now().isAfter(dueDate)) {
          return 'Vencido';
        } else {
          final days = dueDate.difference(DateTime.now()).inDays;
          return 'Vence en $days días';
        }
      case ExpenseStatus.paid:
        return ExpenseStatus.paid.name;
      case ExpenseStatus.cancelled:
        return ExpenseStatus.cancelled.name;
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
      case 'Pagado':
        return context.color.statusSuccess;
      case 'Cancelado':
        return Colors.brown;
      default:
        return Colors.brown;
    }
  }
}
