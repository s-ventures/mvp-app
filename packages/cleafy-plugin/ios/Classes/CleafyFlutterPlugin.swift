import Cleafy
import Flutter
import Foundation

enum CleafyMethod: String {
  case initialization = "initWithConfiguration"
  case location
  case userID = "userId"
  case appSessionID = "appSessionId"
  case appDeviceID = "appDeviceId"
  case sessionID = "sessionId"
  case browserID = "browserId"
  case parentID = "parentId"
  case applicationHostname
  case invalidateSession
  case updateDetection
  case performRequest
  case version
  case getDiagnostics
  case registerDiagnosticsListener
  case unknown
  
  init(with rawValue: String) {
    self = CleafyMethod(rawValue: rawValue) ?? .unknown
  }
}

public class CleafyFlutterPlugin: NSObject, FlutterPlugin {
  private(set) var cleafyProxy: CleafyProxy
  
  private static var diagnosticsChannel: FlutterMethodChannel?
  
  override public init() {
    cleafyProxy = CleafyProxyImpl()
  }
  
  init(cleafyProxy: CleafyProxy) {
    self.cleafyProxy = cleafyProxy
  }
  
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "MainChannel",
      binaryMessenger: registrar.messenger()
    )
    let instance = CleafyFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    diagnosticsChannel = FlutterMethodChannel(
      name: "DiagnosticsChannel",
      binaryMessenger: registrar.messenger()
    )
  }
  
  public func handle(
    _ call: FlutterMethodCall,
    result: @escaping FlutterResult
  ) {
    switch CleafyMethod(with: call.method) {
    case .initialization:
      initialize(from: call, result: result)
    case .location:
      setLocation(from: call, result: result)
    case .userID:
      setUserID(from: call, result: result)
    case .appSessionID:
      setAppSessionID(from: call, result: result)
    case .appDeviceID:
      setAppDeviceID(from: call, result: result)
    case .sessionID:
      result(cleafyProxy.sessionId)
    case .browserID:
      result(cleafyProxy.browserId)
    case .parentID:
      result(cleafyProxy.parentId)
    case .applicationHostname:
      result(cleafyProxy.applicationHostname)
    case .version:
      result(cleafyProxy.version)
    case .invalidateSession:
      cleafyProxy.invalidateSession()
      result("Session invalidated")
    case .updateDetection:
      cleafyProxy.updateDetection()
      result("Detection updated")
    case .getDiagnostics:
      getDiagnostics(result: result)
    case .registerDiagnosticsListener:
      registerDiagnosticsListener()
    case .performRequest:
      guard let dictionary = call.arguments as? [String: Any] else {
        return result(
          FlutterError(
            code: "",
            message: "The call has not arguments",
            details: nil
          )
        )
      }
      performRequest(from: dictionary,
                     result: result)
    case .unknown:
      result(FlutterMethodNotImplemented)
    }
  }
  
  /// Method to initialize Cleafy
  private func initialize(
    from call: FlutterMethodCall,
    result: @escaping FlutterResult
  ) {
    guard let parameters = call.arguments as? [String: Any] else {
      print("Parameters not found")
      result(
        FlutterError(
          code: "Error",
          message: "Initialization parameters not found",
          details: nil
        )
      )
      return
    }
    cleafyProxy.initWith(dictionary: parameters)
    result("inizialization ok")
  }
  
  private func getDiagnostics(result: @escaping FlutterResult) {
    let diagnostics = cleafyProxy.getDiagnostics()
    
    var probeTraces = [[String : Any]]()
    
    diagnostics.probeTraces.forEach { (probeTrace) in
      probeTraces.append(
        ["timestamp":probeTrace.timestamp,
         "sessionId":probeTrace.sessionId,
         "eventId":probeTrace.eventId,
         "statusCode":probeTrace.statusCode]
      )
    }
    
    let map =
    ["deviceId":diagnostics.deviceId,
     "probeTraces":probeTraces,
     "errors":diagnostics.errors,
     "successfulProbeSubmissions":diagnostics.successfulProbeSubmissions,
     "failedProbeSubmissions":diagnostics.failedProbeSubmissions,
     "lastConfigurationUpdateTimestamp":diagnostics.lastConfigurationUpdateTimestamp] as [String : Any]
    
    result(map)
  }
  
  private func registerDiagnosticsListener() {
    guard let channel = CleafyFlutterPlugin.diagnosticsChannel else { return }
    cleafyProxy.registerDiagnosticsListener(channel: channel)
  }
}
