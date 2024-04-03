class ResponseData {

  /// The HTTP status code for this response.
  int statusCode;

  Map<String, String>? headers;

  /// The body of the response as a string.
  Map<String, dynamic>? body;

  /// Creates a new response data
  ResponseData(
    this.statusCode, {
    this.headers,
    this.body,
  });

  factory ResponseData.fromMap(Map map) {
    var statusCode = map['statusCode'];
    var headers = map['headers'];
    if (!headers.isEmpty) {
      headers = headers.cast<String, String>();
    } else {
      headers = <String, String>{};
    }
    var object = map['object'].cast<String, dynamic>();
    var response = ResponseData(
                          statusCode,
                          headers: headers,
                          body: object);
      return response;
  }

  Map toMap() {
    var map = {
      'headers':headers,
      'statusCode':statusCode,
      'body':body
    };
    return map;
  }
}
