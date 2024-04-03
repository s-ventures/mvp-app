import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final customerIdInterceptorProvider = Provider<CustomerIdInterceptor>((ref) => CustomerIdInterceptor());

class CustomerIdInterceptor extends InterceptorsWrapper {
  CustomerIdInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final modifiedOptions = options
      ..headers.addAll(
        {
          // TODO(sergio): Remove this hardcoded customer id
          'X-Customer-Id': 214,
        },
      );
    handler.next(modifiedOptions);
  }
}
