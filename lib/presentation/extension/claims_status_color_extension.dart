import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';
import 'package:ui_kit/ui_kit.dart';

extension ClaimStatusTypeColorX on ClaimStatusType {
  Color textColor(BuildContext context) {
    switch (this) {
      case ClaimStatusType.open:
        return context.color.statusSuccess;
      case ClaimStatusType.inProgress:
        return context.color.statusWarning;
      case ClaimStatusType.close:
        return context.color.neutralLight500;
    }
  }

  Color backgroundColor(BuildContext context) {
    switch (this) {
      case ClaimStatusType.open:
        return context.color.statusSuccess.withOpacity(0.15);
      case ClaimStatusType.inProgress:
        return context.color.statusWarning.withOpacity(0.15);
      case ClaimStatusType.close:
        return context.color.neutralLight100;
    }
  }
}
