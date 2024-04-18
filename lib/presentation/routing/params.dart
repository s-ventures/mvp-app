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
// Insurance
class InsuranceClaimDetailsRouteParams {
  const InsuranceClaimDetailsRouteParams({
    required this.claimId,
    required this.insuranceId,
  });

  final int claimId;
  final int insuranceId;
}
