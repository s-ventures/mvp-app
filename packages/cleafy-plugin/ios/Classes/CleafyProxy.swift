
import Cleafy

protocol CleafyProxy {
  var applicationHostname: String { get }
  
  var browserId: String { get }
  
  var parentId: String { get }
  
  var sessionId: String { get }
  
  var version: String { get }
  
  func initWith(configuration: Cleafy.CleafyConfiguration)
  
  func initWith(dictionary: [String: Any])
  
  func invalidateSession()
  
  func setAppDeviceID(_ appDeviceID: String)
  
  func setAppSessionID(_ appSessionID: String)
  
  func setLocation(_ location: String)
  
  func setUserID(_ userID: String)
  
  func updateDetection()
  
  func getDiagnostics() -> AgentDiagnostics
  
  func registerDiagnosticsListener(channel: FlutterMethodChannel)
}
