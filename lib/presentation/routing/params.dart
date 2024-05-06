// MISC
// WebView
import 'dart:async';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewPageRouteParams {
  const WebViewPageRouteParams({
    required this.title,
    required this.url,
    this.onNavigationRequest,
  });

  final String title;
  final String url;
  final FutureOr<NavigationDecision> Function(NavigationRequest)?
      onNavigationRequest;
}

// DAILY BANKING

// Wires
class TransferSentDetailsRouteParams {
  const TransferSentDetailsRouteParams({
    required this.sentTransferId,
  });

  final int sentTransferId;
}

// Insurance
class InsuranceClaimDetailsRouteParams {
  const InsuranceClaimDetailsRouteParams({
    required this.claimId,
    required this.insuranceId,
  });

  final int claimId;
  final int insuranceId;
}

class InsurancePolicyDetailsRouteParams {
  const InsurancePolicyDetailsRouteParams({
    required this.insuranceId,
    required this.policyId,
  });

  final int insuranceId;
  final int policyId;
}
