import 'package:manifiesto_mvp_app/core/config/app_config_dev.dart';
import 'package:manifiesto_mvp_app/core/config/app_config_prod.dart';
import 'package:manifiesto_mvp_app/core/config/app_config_staging.dart';
import 'package:manifiesto_mvp_app/core/exceptions/common_exceptions.dart';
import 'package:manifiesto_mvp_app/flavors.dart';

/// Configuration variables used in the entire app
abstract class AppConfig {
  factory AppConfig() {
    switch (F.appFlavor) {
      case Flavor.staging:
        return AppConfigStaging();
      case Flavor.development:
        return AppConfigDev();
      case Flavor.production:
        return AppConfigProd();
      case null:
        throw FlavorNotSelectedException();
    }
  }

  /// The name of the app
  String get appName;

  /// The base URL of the API
  String get baseUrl;
}
