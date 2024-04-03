package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import com.cleafy.mobile.detection.agent.AgentDiagnosticsListener
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch

internal class RegisterDiagnosticsListenerFlutterMethod(
    private val cleafy: CleafyProxy,
    flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
) : FlutterMethod {

    private val channel = MethodChannel(flutterPluginBinding.binaryMessenger, "DiagnosticsChannel")

    override fun invoke(
        flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
        call: MethodCall,
        result: MethodChannel.Result
    ) {
        val mainScope = MainScope()
        val listener = AgentDiagnosticsListener { _, error ->
            mainScope.launch {
                channel.invokeMethod(
                    "diagnosticsListenerCallback",
                    error
                )
            }
        }

        cleafy.registerDiagnosticListener(listener)
    }
}
