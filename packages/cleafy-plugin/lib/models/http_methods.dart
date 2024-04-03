enum HttpMethod {
  head,
  get,
  post,
  put,
  patch,
  delete,
}

extension ParseToString on HttpMethod {
  String toShortString() {
    return toString().split('.').last;
  }
}

/// Parses an string into a Method Enum value.
HttpMethod methodFromString(String method) {
  switch (method) {
    case "HEAD":
      return HttpMethod.head;
    case "GET":
      return HttpMethod.get;
    case "POST":
      return HttpMethod.post;
    case "PUT":
      return HttpMethod.put;
    case "PATCH":
      return HttpMethod.patch;
    case "DELETE":
      return HttpMethod.delete;
  }
  throw ArgumentError.value(method, "method", "Must be a valid HTTP Method.");
}

// Parses a Method Enum value into a string.
String methodToString(HttpMethod method) {
  switch (method) {
    case HttpMethod.head:
      return "HEAD";
    case HttpMethod.get:
      return "GET";
    case HttpMethod.post:
      return "POST";
    case HttpMethod.put:
      return "PUT";
    case HttpMethod.patch:
      return "PATCH";
    case HttpMethod.delete:
      return "DELETE";
  }
}
