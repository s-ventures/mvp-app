import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({
    required this.url,
    this.onNavigationRequest,
    super.key,
  });

  final String url;
  final FutureOr<NavigationDecision> Function(NavigationRequest)? onNavigationRequest;

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: onNavigationRequest,
        ),
      )
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'WebView',
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
