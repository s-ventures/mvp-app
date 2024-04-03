package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import com.cleafy.cleafyPlugin.http.CleafyHttpClient
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

internal class PerformRequestFlutterMethod(
    private val cleafy: CleafyProxy,
    private val coroutineScope: CoroutineScope,
    private val cleafyHttpClientFactory: (
        urlString: String?,
        requestMethod: String,
        params: Map<String, String>,
        headers: Map<String, String>,
        timeout: Int,
        cleafy: CleafyProxy,
        ioDispatcher: CoroutineDispatcher
    ) -> CleafyHttpClient = ::CleafyHttpClient,
    private val ioDispatcher: CoroutineDispatcher = Dispatchers.IO
) : FlutterMethod {

    override fun invoke(
        flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
        call: MethodCall,
        result: MethodChannel.Result
    ) {
        val args = call.arguments<Map<String, Any?>>() ?: run {
            result.error("", "Arguments not provided", null)
            return
        }

        val method: String by args
        val headers: Map<String, String> by args
        val body: Map<String, String> by args
        val timeout: Int? by args
        val baseUrl: String by args

        val client = cleafyHttpClientFactory(
            baseUrl,
            method.uppercase(),
            body,
            headers,
            timeout ?: DEFAULT_REQUEST_TIMEOUT,
            cleafy,
            ioDispatcher
        )

        coroutineScope.launch {
            val callResult = client.executeCall()
            if (callResult != null) {
                result.success(callResult)
            } else {
                result.error("", "Request failed", null)
            }
        }
    }

    companion object {

        private const val DEFAULT_REQUEST_TIMEOUT = 60
    }
}
