/// Exception thrown when the Flavor has not been initialized
class FlavorNotSelectedException implements Exception {}

/// Exception thrown when there is no configuration for this environment
class MissingConfigException implements Exception {}

/// Exception thrown when the app tries to use a configuration variable but it's not configured for the current environment
class MissingConfigVariableException implements Exception {
  MissingConfigVariableException({required this.variableName});

  /// The name of the missing variable
  final String variableName;
}
