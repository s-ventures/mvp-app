import 'dart:convert';
import 'package:CleafyPlugin/CleafyPlugin.dart';
import 'package:CleafyPlugin/models/http_methods.dart';

class RequestData {
  /// The HTTP method of the request.
  HttpMethod method;

  /// The base URL String.
  String baseUrl;

  /// Map of String to String that represents the headers of the request.
  Map<String, String> headers;

  /// Map of String to String that represents the query parameters of the
  /// request.
  Map<String, dynamic> params;

  Map<String, dynamic> body;

  int? timeout;

  RequestData(
      {required this.method,
      required this.baseUrl,
      Map<String, String>? headers,
      Map<String, dynamic>? params,
      Map<String, dynamic>? body,
      this.timeout})
      : headers = headers ?? {},
        params = params ?? {},
        body = body ?? {};

  factory RequestData.fromMap(Map map) {
    var methodString = map['method'].toLowerCase();
    var method =
        HttpMethod.values.firstWhere((e) => e.toShortString() == methodString);
    var baseUrl = map['baseUrl'];
    var timeout = map['timeout'];
    var headers = map['headers'].cast<String, String>();
    Map<String, dynamic> params = map['params'].cast<String, dynamic>();
    Map<String, dynamic> body = map['body'].cast<String, dynamic>();
    return RequestData(
        method: method,
        baseUrl: baseUrl,
        headers: headers,
        params: params,
        body: body,
        timeout: timeout);
  }

  Map toMap() {
    var map = {
      'method': methodToString(method),
      'baseUrl': baseUrl,
      'headers': headers,
      'params': params,
      'body': body,
      'timeout': timeout
    };
    return map;
  }

  static RequestData fromMapEncoding(Map map, Encoding? encoding) {
    var methodString = map['method'];
    var method =
        HttpMethod.values.firstWhere((e) => e.toShortString() == methodString);
    var baseUrl = map['baseUrl'];
    var timeout = map['timeout'];
    var headers = map['headers'].cast<String, String>();
    Map<String, dynamic> params = map['params'].cast<String, dynamic>();
    Map<String, dynamic> body = map['body'].cast<String, String>();
    return RequestData(
        method: method,
        baseUrl: baseUrl,
        headers: headers,
        params: params,
        body: body,
        timeout: timeout);
  }
}
