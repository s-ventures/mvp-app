import 'package:dio/dio.dart';
import 'package:manifiesto_mvp_app/core/config/app_config.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/interceptors/customer_id_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

final dioProvider = Provider<Dio>(
  (ref) => Dio()
    ..options = BaseOptions(
      baseUrl: AppConfig().baseUrl,
      headers: {
        'accept': '*/*',
      },
      validateStatus: (status) => status != null && 200 <= status && status < 400,
    )
    ..interceptors.add(ref.read(customerIdInterceptorProvider))
    ..interceptors.add(TalkerDioLogger()),
);
