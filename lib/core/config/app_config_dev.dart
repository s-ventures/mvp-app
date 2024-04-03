import 'package:manifiesto_mvp_app/core/config/app_config.dart';

class AppConfigDev implements AppConfig {
  @override
  String get appName => '[DEV] Soon';

  @override
  String get baseUrl => 'https://apis-nopr.soon.es';
}
