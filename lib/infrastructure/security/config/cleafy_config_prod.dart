import 'package:CleafyPlugin/models/cleafy_configuration.dart';
import 'package:manifiesto_mvp_app/core/config/app_config.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/config/cleafy_app_config.dart';

class CleafyConfigProd implements CleafyAppConfig {
  @override
  CleafyConfiguration get() => CleafyConfiguration(
        // TODO(miguel): ADD ENPOINT
        '',
        AppConfig().appName,
        CleafyDetectorsConfiguration(),
      );
}
