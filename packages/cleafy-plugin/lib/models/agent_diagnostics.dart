class AgentDiagnostics {
  String deviceId;
  List<ProbeTrace> probeTraces;
  List<String> errors;
  int successfulProbeSubmissions;
  int failedProbeSubmissions;
  int lastConfigurationUpdateTimestamp;

  AgentDiagnostics(
      this.deviceId,
      this.probeTraces,
      this.errors,
      this.successfulProbeSubmissions,
      this.failedProbeSubmissions,
      this.lastConfigurationUpdateTimestamp);

  factory AgentDiagnostics.fromMap(Map map) {
    var probeTraces = <ProbeTrace>[];
    var mapProbeTraces = map['probeTraces'];

    for (var el in mapProbeTraces) {
      probeTraces.add(ProbeTrace.fromMap(el));
    }

    return AgentDiagnostics(
        map['deviceId'],
        probeTraces,
        List<String>.from(map['errors']),
        map['successfulProbeSubmissions'],
        map['failedProbeSubmissions'],
        map['lastConfigurationUpdateTimestamp']);
  }
}

class ProbeTrace {
  int timestamp;
  String sessionId;
  String eventId;
  String probeType;
  int statusCode;

  ProbeTrace(this.timestamp, this.sessionId, this.eventId, this.probeType,
      this.statusCode);

  factory ProbeTrace.fromMap(Map map) {
    return ProbeTrace(map['timestamp'], map['sessionId'], map['eventId'],
        map['probeType'] ?? "", map['statusCode']);
  }
}
