import 'package:manifiesto_mvp_app/core/exceptions/common_exceptions.dart';
import 'package:manifiesto_mvp_app/core/logger/logger_dev.dart';
import 'package:manifiesto_mvp_app/core/logger/logger_prod.dart';
import 'package:manifiesto_mvp_app/core/logger/logger_staging.dart';
import 'package:manifiesto_mvp_app/flavors.dart';

abstract class AppLogger {
  factory AppLogger() {
    switch (F.appFlavor) {
      case Flavor.production:
        return LoggerProd();
      case Flavor.staging:
        return LoggerStaging();
      case Flavor.development:
        return LoggerDev();
      case null:
        throw FlavorNotSelectedException();
    }
  }

  // TODO(migalv): Add docs
  void debug(String message);

  // TODO(migalv): Add docs
  void info(String message);

  // TODO(migalv): Add docs
  void warning(String message);

  // TODO(miguel): Add docs
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  });
}
