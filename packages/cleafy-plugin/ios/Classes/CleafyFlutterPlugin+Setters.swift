import Cleafy

extension CleafyFlutterPlugin {
    func setLocation(
        from call: FlutterMethodCall,
        result: @escaping FlutterResult
    ) {
        guard let location = call.arguments as? String else {
            result(
                FlutterError(
                    code: "0",
                    message: "Invalid string for \(call.method)",
                    details: nil
                )
            )
            return
        }
        cleafyProxy.setLocation(location)
        result("Location set!")
    }

    func setAppSessionID(
        from call: FlutterMethodCall,
        result: @escaping FlutterResult
    ) {
        guard let appSessionID = call.arguments as? String else {
            result(
                FlutterError(
                    code: "0",
                    message: "Invalid string for \(call.method)",
                    details: nil
                )
            )
            return
        }
        cleafyProxy.setAppSessionID(appSessionID)
        result("New app session ID set!")
    }

    func setUserID(
        from call: FlutterMethodCall,
        result: @escaping FlutterResult
    ) {
        guard let userID = call.arguments as? String else {
            result(
                FlutterError(
                    code: "0",
                    message: "Invalid string for \(call.method)",
                    details: nil
                )
            )
            return
        }
        cleafyProxy.setUserID(userID)
        result("New user ID set!")
    }

    func setAppDeviceID(
        from call: FlutterMethodCall,
        result: @escaping FlutterResult
    ) {
        guard let appDeviceID = call.arguments as? String else {
            result(
                FlutterError(
                    code: "0",
                    message: "Invalid string for \(call.method)",
                    details: nil
                )
            )
            return
        }
        cleafyProxy.setAppDeviceID(appDeviceID)
        result("New app device ID!")
    }
}
