package com.cleafy.cleafyPlugin.methods

import io.flutter.plugin.common.MethodChannel
import io.mockk.coEvery
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.slot
import io.mockk.verify
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.TestCoroutineScheduler
import kotlinx.coroutines.test.TestScope
import org.junit.Test
import kotlin.test.assertSame

@OptIn(ExperimentalCoroutinesApi::class)
class PerformRequestFlutterMethodTest {

    @Test
    fun `invoke creates a CleafyHttpClient, performs a request with it and emits success result if successful`() {
        val scheduler = TestCoroutineScheduler()
        val testDispatcher = StandardTestDispatcher(scheduler)
        val coroutineScope = TestScope(testDispatcher)

        val args = mapOf(
            "method" to "GET",
            "headers" to mapOf("" to ""),
            "body" to mapOf("" to ""),
            "timeout" to 60,
            "baseUrl" to "https://cleafy.com"
        )

        val slot = slot<Map<String, Any?>>()
        val mockResult = mockk<MethodChannel.Result> {
            every { success(capture(slot)) } just runs
        }

        val mockResponse = mapOf("OK" to "OK")

        PerformRequestFlutterMethod(
            cleafy = mockk(),
            coroutineScope = coroutineScope,
            cleafyHttpClientFactory = { _, _, _, _, _, _, _ ->
                mockk {
                    coEvery { executeCall() } returns mockResponse
                }
            },
            ioDispatcher = testDispatcher
        ).invoke(
            flutterPluginBinding = mockk(),
            call = mockk { every { arguments<Map<String, Any?>>() } returns args },
            result = mockResult
        )

        scheduler.advanceUntilIdle()

        verify(exactly = 1) { mockResult.success(any()) }
        assertSame(mockResponse, slot.captured)
    }

    @Test
    fun `invoke creates a CleafyHttpClient, performs a request with it and emits error result if failing`() {
        val scheduler = TestCoroutineScheduler()
        val testDispatcher = StandardTestDispatcher(scheduler)
        val coroutineScope = TestScope(testDispatcher)

        val args = mapOf(
            "method" to "GET",
            "headers" to mapOf("" to ""),
            "body" to mapOf("" to ""),
            "timeout" to 60,
            "baseUrl" to "https://cleafy.com"
        )

        val mockResult = mockk<MethodChannel.Result> {
            every { error(any(), any(), any()) } just runs
        }

        PerformRequestFlutterMethod(
            cleafy = mockk(),
            coroutineScope = coroutineScope,
            cleafyHttpClientFactory = { _, _, _, _, _, _, _ ->
                mockk {
                    coEvery { executeCall() } returns null
                }
            },
            ioDispatcher = testDispatcher
        ).invoke(
            flutterPluginBinding = mockk(),
            call = mockk { every { arguments<Map<String, Any?>>() } returns args },
            result = mockResult
        )

        scheduler.advanceUntilIdle()

        verify(exactly = 1) { mockResult.error(any(), any(), any()) }
    }
}

