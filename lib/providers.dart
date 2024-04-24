import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/security/repositories/security_monitor_facade.dart';

///
/// Infrastructure dependencies
///

///
/// Application dependencies
///

///
/// Presentation dependencies
///
///

/// Triggered from bootstrap() to complete futures
Future<void> initializeProviders(ProviderContainer container) async {
  /// Core

  /// Security
  await container.read(securityMonitoringRepositoryProvider).init();

  /// Auth
  // await container.read(authControllerProvider.notifier).checkAndUpdateAuthStatus();
}
