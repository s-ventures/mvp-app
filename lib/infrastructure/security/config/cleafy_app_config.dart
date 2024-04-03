import 'package:CleafyPlugin/models/cleafy_configuration.dart';
import 'package:manifiesto_mvp_app/core/exceptions/common_exceptions.dart';
import 'package:manifiesto_mvp_app/flavors.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/config/cleafy_config_dev.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/config/cleafy_config_prod.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/config/cleafy_config_staging.dart';

/// Abstract interface that defines the needed configurations for the Cleafy implementation
abstract class CleafyAppConfig {
  factory CleafyAppConfig() {
    switch (F.appFlavor) {
      case Flavor.production:
        return CleafyConfigProd();
      case Flavor.staging:
        return CleafyConfigStaging();
      case Flavor.development:
        return CleafyConfigDev();
      case null:
        throw FlavorNotSelectedException();
    }
  }

  /// Retrieves the configuration for the proper environment
  ///
  /// **Can throw**: [MissingConfigException], [MissingConfigVariableException]
  CleafyConfiguration get();
}
