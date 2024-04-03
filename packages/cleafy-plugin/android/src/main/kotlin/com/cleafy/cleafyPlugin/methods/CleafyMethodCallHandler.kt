package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import com.cleafy.cleafyPlugin.utils.KoverExclude
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.MainScope

@KoverExclude
class CleafyMethodCallHandler(
    private val flutterPluginBinding: FlutterPlugin.FlutterPluginBinding
) : MethodChannel.MethodCallHandler {

    private val cleafyProxy = CleafyProxy()
    private val coroutineScope = MainScope()

    private val methodBindings = mapOf(
        MethodNames.INITIALIZATION to InitializationFlutterMethod(cleafyProxy),
        MethodNames.LOCATION to LocationFlutterMethod(cleafyProxy),
        MethodNames.USER_ID to UserIdFlutterMethod(cleafyProxy),
        MethodNames.SESSION_ID to SessionIdFlutterMethod(cleafyProxy),
        MethodNames.BROWSER_ID to BrowserIdFlutterMethod(cleafyProxy),
        MethodNames.PARENT_ID to ParentIdFlutterMethod(cleafyProxy),
        MethodNames.VERSION to VersionFlutterMethod(cleafyProxy),
        MethodNames.APPLICATION_HOSTNAME to ApplicationHostnameFlutterMethod(cleafyProxy),
        MethodNames.APP_SESSION_ID to AppSessionIdFlutterMethod(cleafyProxy),
        MethodNames.APP_DEVICE_ID to AppDeviceIdFlutterMethod(cleafyProxy),
        MethodNames.INVALIDATE_SESSION to InvalidateSessionFlutterMethod(cleafyProxy),
        MethodNames.UPDATE_DETECTION to UpdateDetectionFlutterMethod(cleafyProxy),
        MethodNames.PERFORM_REQUEST to PerformRequestFlutterMethod(cleafyProxy, coroutineScope),
        MethodNames.GET_DIAGNOSTICS to GetDiagnosticsFlutterMethod(cleafyProxy),
        MethodNames.REGISTER_DIAGNOSTICS_LISTENER to RegisterDiagnosticsListenerFlutterMethod(
            cleafyProxy,
            flutterPluginBinding
        )
    )

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        methodBindings.getOrElse(call.method) { UnknownFlutterMethod() }.invoke(
            flutterPluginBinding = flutterPluginBinding,
            call = call,
            result = result
        )
    }
}
