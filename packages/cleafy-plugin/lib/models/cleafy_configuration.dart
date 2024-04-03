class CleafyConfiguration {
  String apiEndpoint;
  String applicationHostname;
  CleafyDetectorsConfiguration detectors;
  bool defaultEnabled;
  AutomaticUpdateAnalysis automaticUpdateAnalysis;
  bool packageAnalysisEnabled;
  bool collectSensitiveIdentifiers;
  bool hashSensitiveIdentifiers;
  bool allowUntrustedCertificates;
  EmulatorDebugAnalysis emulatorDebugAnalysis;

  CleafyConfiguration(
      this.apiEndpoint, this.applicationHostname, this.detectors,
      {this.defaultEnabled = true,
      this.automaticUpdateAnalysis = AutomaticUpdateAnalysis.none,
      this.packageAnalysisEnabled = true,
      this.collectSensitiveIdentifiers = true,
      this.hashSensitiveIdentifiers = false,
      this.allowUntrustedCertificates = false,
      this.emulatorDebugAnalysis = EmulatorDebugAnalysis.none});

  Map toMap() {
    Map map = {
      'api_endpoint': apiEndpoint,
      'application_hostname': applicationHostname,
      'default_enabled': defaultEnabled,
      'automatic_update_analysis': automaticUpdateAnalysis.index,
      'package_analysis_enabled': packageAnalysisEnabled,
      'collect_sensitive_identifiers': collectSensitiveIdentifiers,
      'hash_sensitive_identifiers': hashSensitiveIdentifiers,
      'allow_untrusted_certificates': allowUntrustedCertificates,
      'emulator_detection_analysis': emulatorDebugAnalysis.index,
    };
    map.addAll(detectors.toMap());
    return map;
  }
}

enum AutomaticUpdateAnalysis { none, foreground }

enum EmulatorDebugAnalysis { none, basic, advanced }

class CleafyDetectorsConfiguration {
  String certDetectorEndpoint;
  bool monitoredAppEnabled;
  bool httpDetectorEnabled;
  bool certDetectorEnabled;
  bool advancedCertDetectorEnabled;
  bool rootDetectorEnabled;
  bool taskInjectionEnabled;
  bool mockLocationDetectorEnabled;
  bool advancedMockLocationDetectorEnabled;
  bool activityDetectorEnabled;
  bool onCallDetectorEnabled;
  bool humanDetectorEnabled;

  CleafyDetectorsConfiguration(
      {this.certDetectorEndpoint = '',
      this.monitoredAppEnabled = true,
      this.httpDetectorEnabled = false,
      this.certDetectorEnabled = false,
      this.advancedCertDetectorEnabled = false,
      this.rootDetectorEnabled = true,
      this.taskInjectionEnabled = false,
      this.mockLocationDetectorEnabled = false,
      this.advancedMockLocationDetectorEnabled = true,
      this.activityDetectorEnabled = true,
      this.onCallDetectorEnabled = false,
      this.humanDetectorEnabled = false});

  Map toMap() {
    Map map = {
      'monitored_app_enabled': monitoredAppEnabled,
      'http_detector_enabled': httpDetectorEnabled,
      'certificate_detector_enabled': certDetectorEnabled,
      'certificate_detector_endpoint': certDetectorEndpoint,
      'advanced_certificate_detector_enabled': advancedCertDetectorEnabled,
      'root_detector_enabled': rootDetectorEnabled,
      'task_injection_enabled': taskInjectionEnabled,
      'mock_location_enabled': mockLocationDetectorEnabled,
      'advanced_mock_location_enabled': advancedMockLocationDetectorEnabled,
      'activity_detector_enabled': activityDetectorEnabled,
      'on_call_detector_enabled': onCallDetectorEnabled,
      'human_detector_enabled': humanDetectorEnabled
    };
    return map;
  }
}
