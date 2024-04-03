import 'package:CleafyPlugin/models/cleafy_configuration.dart';
import 'package:manifiesto_mvp_app/core/exceptions/common_exceptions.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/config/cleafy_app_config.dart';

class CleafyConfigDev implements CleafyAppConfig {
  @override
  CleafyConfiguration get() => throw MissingConfigException();
}
