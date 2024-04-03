package com.cleafy.cleafyPlugin.methods

import android.app.Application
import com.cleafy.cleafyPlugin.interop.CleafyConfigurationParser
import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.flutter.plugin.common.MethodChannel
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.mockkObject
import io.mockk.runs
import io.mockk.slot
import io.mockk.verify
import org.junit.Test
import kotlin.test.assertSame

class InitializationFlutterMethodTest {

    @Test
    fun `invoke calls Cleafy initWithConfiguration and emits success result when argument is present`() {
        val testInitMap = mapOf<String, Any?>()
        val cleafyMock = mockk<CleafyProxy>() {
            every { initWithConfiguration(any(), any()) } just runs
        }
        val mockResult = mockk<MethodChannel.Result>(relaxed = true)
        val slot = slot<Map<String, Any?>>()

        mockkObject(CleafyConfigurationParser) {
            every { CleafyConfigurationParser.parseFromMap(capture(slot)) } returns mockk()

            InitializationFlutterMethod(cleafyMock).invoke(
                flutterPluginBinding = mockk {
                    every { applicationContext } returns mockk<Application>()
                },
                call = mockk { every { arguments<Map<String, Any?>>() } returns testInitMap },
                result = mockResult
            )
        }

        verify(exactly = 1) { cleafyMock.initWithConfiguration(any(), any()) }
        assertSame(testInitMap, slot.captured)
        verify(exactly = 1) { mockResult.success(any()) }
    }

    @Test
    fun `invoke does not call Cleafy initWithConfiguration and emits error result when argument is missing`() {
        val cleafyMock = mockk<CleafyProxy>() {
            every { initWithConfiguration(any(), any()) } just runs
        }
        val mockResult = mockk<MethodChannel.Result>(relaxed = true)

        InitializationFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk { every { arguments<String>() } returns null },
            result = mockResult
        )

        verify(exactly = 0) { cleafyMock.initWithConfiguration(any(), any()) }
        verify(exactly = 1) { mockResult.error(any(), any(), any()) }
    }
}
