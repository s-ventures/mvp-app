import 'package:CleafyPlugin/CleafyPlugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/core/exceptions/common_exceptions.dart';
import 'package:manifiesto_mvp_app/core/logger/app_logger.dart';
import 'package:manifiesto_mvp_app/core/logger/app_logger_provider.dart';
import 'package:manifiesto_mvp_app/domain/security/repositories/monitoring/i_security_monitoring.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/config/cleafy_app_config.dart';

final securityMonitoringRepositoryProvider = Provider(
  (ref) => SecurityMonitorFacade(
    cleafyConfig: CleafyAppConfig(),
    logger: ref.watch(appLoggerProvider),
  ),
);

class SecurityMonitorFacade implements ISecurityMonitor {
  SecurityMonitorFacade({
    required CleafyAppConfig cleafyConfig,
    required AppLogger logger,
  })  : _cleafyConfig = cleafyConfig,
        _logger = logger;

  final CleafyAppConfig _cleafyConfig;
  final AppLogger _logger;

  @override
  Future<void> init() async {
    try {
      final config = _cleafyConfig.get();
      await CleafyPlugin.initWithConfiguration(config);
    } on MissingConfigException {
      _logger.warning(
          'Cleafy adapter did not initialize due to missing configuration');
    } on MissingConfigVariableException catch (e) {
      _logger.warning(
          'Cleafy adapter did not initialize due to missing configuration variable ${e.variableName}');
    }
  }
}
