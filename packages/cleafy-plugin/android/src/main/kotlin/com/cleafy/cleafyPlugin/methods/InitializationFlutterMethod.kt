package com.cleafy.cleafyPlugin.methods

import android.app.Application
import com.cleafy.cleafyPlugin.interop.CleafyConfigurationParser
import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

internal class InitializationFlutterMethod(private val cleafy: CleafyProxy) : FlutterMethod {

    override fun invoke(
        flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
        call: MethodCall,
        result: MethodChannel.Result
    ) {
        val callArguments = call.arguments<Map<String, Any?>>() ?: run {
            result.error("", "Cleafy initialization arguments not provided", null)
            return
        }

        val configuration = CleafyConfigurationParser.parseFromMap(callArguments)
        cleafy.initWithConfiguration(flutterPluginBinding.applicationContext as Application, configuration)

        result.success("Cleafy initialized")
    }
}
