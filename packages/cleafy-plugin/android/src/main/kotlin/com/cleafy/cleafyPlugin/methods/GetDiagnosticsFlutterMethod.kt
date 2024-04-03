package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

internal class GetDiagnosticsFlutterMethod(private val cleafy: CleafyProxy) : FlutterMethod {

    override fun invoke(
        flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
        call: MethodCall,
        result: MethodChannel.Result
    ) {
        val diagnostics = cleafy.getDiagnostics()
        val probeTraces = mutableListOf<HashMap<String, Any>>()

        diagnostics.probeTraces.forEach {
            probeTraces.add(
                hashMapOf(
                    "timestamp" to it.timestamp,
                    "sessionId" to it.sessionId,
                    "eventId" to it.eventId,
                    "probeType" to it.probeType,
                    "statusCode" to it.statusCode
                )
            )
        }
        val hashMap = hashMapOf(
            "deviceId" to diagnostics.deviceId,
            "probeTraces" to probeTraces,
            "errors" to diagnostics.errors,
            "successfulProbeSubmissions" to diagnostics.successfulProbeSubmissions,
            "failedProbeSubmissions" to diagnostics.failedProbeSubmissions,
            "lastConfigurationUpdateTimestamp" to diagnostics.lastConfigurationUpdateTimestamp
        )

        result.success(hashMap)
    }
}
