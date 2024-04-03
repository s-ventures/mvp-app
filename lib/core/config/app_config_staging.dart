import 'package:manifiesto_mvp_app/core/config/app_config.dart';

class AppConfigStaging implements AppConfig {
  @override
  String get appName => '[QA] Soon';

  @override
  String get baseUrl => '';
}
