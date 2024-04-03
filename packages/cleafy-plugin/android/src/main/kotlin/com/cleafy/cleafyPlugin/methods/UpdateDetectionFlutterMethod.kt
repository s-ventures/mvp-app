package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

internal class UpdateDetectionFlutterMethod(private val cleafy: CleafyProxy) : FlutterMethod {

    override fun invoke(
        flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
        call: MethodCall,
        result: MethodChannel.Result
    ) {
        cleafy.updateDetection()
        result.success("Detection updated")
    }
}
