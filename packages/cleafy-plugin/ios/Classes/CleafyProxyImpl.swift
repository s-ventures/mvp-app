
import Cleafy

struct CleafyProxyImpl: CleafyProxy {
  
  var applicationHostname: String { Cleafy.applicationHostname }
  
  var browserId: String { Cleafy.browserId }
  
  var parentId: String { Cleafy.parentId }
  
  var sessionId: String { Cleafy.sessionId }
  
  var version: String { Cleafy.version }
  
  func initWith(configuration: Cleafy.CleafyConfiguration) {
    Cleafy.initWith(configuration: configuration)
  }
  
  func initWith(dictionary: [String: Any]) {
    Cleafy.initWith(dictionary: dictionary)
  }
  
  func invalidateSession() {
    Cleafy.invalidateSession()
  }
  
  func setAppDeviceID(_ appDeviceID: String) {
    Cleafy.setAppDeviceID(appDeviceID)
  }
  
  func setAppSessionID(_ appSessionID: String) {
    Cleafy.setAppSessionID(appSessionID)
  }
  
  func setLocation(_ location: String) {
    Cleafy.setLocation(location)
  }
  
  func setUserID(_ userID: String) {
    Cleafy.setUserID(userID)
  }
  
  func updateDetection() {
    Cleafy.updateDetection()
  }
  
  func getDiagnostics() -> AgentDiagnostics {
    return Cleafy.getDiagnostics()
  }
  
  func registerDiagnosticsListener(channel: FlutterMethodChannel) {
    class AgentDiagnosticsListenerImpl : AgentDiagnosticsListener {
      var channel: FlutterMethodChannel
      
      internal init(channel: FlutterMethodChannel) {
        self.channel = channel
      }
      
      func onDiagnosticsWithErrorAvailable(diagnosticsProvider: Cleafy.AgentDiagnosticsProvider, error: String) {
        channel.invokeMethod("diagnosticsListenerCallback", arguments: nil)
      }
    }
    
    Cleafy.registerDiagnosticsListener(listener: AgentDiagnosticsListenerImpl(channel: channel))
  }
}
