package com.cleafy.cleafyPlugin.http

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import com.cleafy.cleafyPlugin.utils.KoverExclude
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.net.HttpURLConnection
import java.net.URL
import java.net.URLEncoder

@KoverExclude
internal class CleafyHttpClient(
    private val urlString: String?,
    private val requestMethod: String,
    private val params: Map<String, String>,
    private val headers: Map<String, String>,
    private val timeout: Int,
    private val cleafy: CleafyProxy,
    private val ioDispatcher: CoroutineDispatcher = Dispatchers.IO
) {

    private object RequestMethods {
        const val DELETE = "DELETE"
        const val GET = "GET"
        const val HEAD = "HEAD"
        const val PATCH = "PATCH"
        const val POST = "POST"
        const val PUT = "PUT"

        val acceptedMethods = setOf(DELETE, GET, HEAD, PATCH, POST, PUT)
    }

    @Suppress("BlockingMethodInNonBlockingContext")
    suspend fun executeCall(): Map<String, Any?>? {
        require(requestMethod in RequestMethods.acceptedMethods)

        return withContext(ioDispatcher) {
            val url = URL(urlString)
            val urlConnection = url.openConnection() as? HttpURLConnection ?: return@withContext null
            val cleafyConnection = cleafy.httpURLConnectionFactory.create(url, urlConnection)

            cleafyConnection.requestMethod = requestMethod
            cleafyConnection.readTimeout = timeout

            for ((k, v) in headers) {
                if (k.isNotBlank() && v.isNotBlank()) {
                    cleafyConnection.addRequestProperty(k, v)
                }
            }

            if (requestMethod == RequestMethods.POST ||
                requestMethod == RequestMethods.PUT ||
                requestMethod == RequestMethods.PATCH
            ) {
                urlConnection.doOutput = true
                val query = params.entries.joinToString("&") { (k, v) ->
                    "${URLEncoder.encode(k, "UTF-8")}=${URLEncoder.encode(v, "UTF-8")}"
                }
                urlConnection.outputStream.bufferedWriter(Charsets.UTF_8).use { it.write(query) }
            }

            val result = mapOf(
                "statusCode" to cleafyConnection.responseCode,
                "headers" to urlConnection.headerFields.filterKeys { it != null },
                "object" to mapOf("body" to urlConnection.inputStream.bufferedReader().use { it.readText() })
            )

            cleafyConnection.disconnect()

            result
        }
    }
}
