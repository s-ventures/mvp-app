import 'dart:async';

import 'package:CleafyPlugin/models/agent_diagnostics.dart';
import 'package:flutter/services.dart';
import 'package:CleafyPlugin/models/cleafy_configuration.dart';

import 'models/request_data.dart';
import 'models/response_data.dart';

typedef DiagnosticsCallback = void Function(String);

class CleafyPlugin {
  static const MethodChannel _channel = MethodChannel('MainChannel');
  static const MethodChannel _diagnosticsChannel =
      MethodChannel('DiagnosticsChannel');

  static Future<void> initWithConfiguration(
      CleafyConfiguration configuration) async {
    await _channel.invokeMethod('initWithConfiguration', configuration.toMap());
  }

  /// Monitor application perimeter. Call on each viewController.
  static Future<void> location(String value) async {
    await _channel.invokeMethod('location', value);
  }

  /// To correlate anonymous sessions with users, it is helpful to capture and display user information.
  static Future<void> userId(String value) async {
    await _channel.invokeMethod('userId', value);
  }

  /// Cleafy Session Identifier (SID) generated by the Cleafy SDK during the initialisation phase.
  static Future<String> get sessionId async {
    final String sessionId = await _channel.invokeMethod('sessionId');
    return sessionId;
  }

  /// Cleafy Browser Identifier (BID) generated by the Cleafy SDK during the initialisation phase.
  static Future<String> get browserId async {
    final String browserId = await _channel.invokeMethod('browserId');
    return browserId;
  }

  static Future<String> get parentId async {
    final String parentId = await _channel.invokeMethod('parentId');
    return parentId;
  }

  /// The application hostname as registered on Cleafy Platform.
  static Future<String> get applicationHostname async {
    final String applicationHostname =
        await _channel.invokeMethod('applicationHostname');
    return applicationHostname;
  }

  /// Set to collect a custom application session ID.
  static Future<void> appSessionId(String value) async {
    await _channel.invokeMethod('appSessionId', value);
  }

  /// Set to collect a custom application Device Identifier.
  static Future<void> appDeviceId(String value) async {
    await _channel.invokeMethod('appDeviceId', value);
  }

  /// The Cleafy session is automatically reset on application exit. It is also possible to explicitly reset the session using this method, for example to mirror the authentication lifecycle (e.g. user logging out or login expired).
  static Future<void> get invalidateSession async {
    await _channel.invokeMethod('invalidateSession');
  }

  /// Method to reload and update detection.
  static Future<void> get updateDetection async {
    await _channel.invokeMethod('updateDetection');
  }

  static Future<ResponseData> performRequest(RequestData request) async {
    var responseMap =
        await _channel.invokeMethod('performRequest', request.toMap()) as Map;
    var response = ResponseData.fromMap(responseMap);
    return response;
  }

  /// Get diagnostics information.
  static Future<AgentDiagnostics> get diagnostics async {
    var responseMap = await _channel.invokeMethod('getDiagnostics') as Map;
    return AgentDiagnostics.fromMap(responseMap);
  }

  /// Register listener for diagnostics information.
  static Future<void> registerDiagnosticsListener(
      DiagnosticsCallback callback) async {
    _diagnosticsChannel.setMethodCallHandler((call) async {
      if (call.method != "diagnosticsListenerCallback") return;
      callback(call.arguments.toString());
    });

    await _channel.invokeMethod('registerDiagnosticsListener');
  }
}
