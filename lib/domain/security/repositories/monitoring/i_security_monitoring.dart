// ignore_for_file: one_member_abstracts

/// Interface for the repository responsible for monitoring the device's activity for security reasons
abstract class ISecurityMonitor {
  /// Initialize the Security Monitoring configuration
  Future<void> init();
}
