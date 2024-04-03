package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.flutter.plugin.common.MethodChannel
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.slot
import io.mockk.verify
import org.junit.Test
import kotlin.test.assertEquals

internal class ApplicationHostnameFlutterMethodTest {

    @Test
    fun `invoke calls Cleafy getApplicationHostname and emits success result`() {
        val testApplicationHostname = "nfGeXFBVg7eUBCWm32v9"
        val cleafyMock = mockk<CleafyProxy>() {
            every { applicationHostname } returns testApplicationHostname
        }
        val slot = slot<String>()
        val mockResult = mockk<MethodChannel.Result>() {
            every { success(capture(slot)) } just runs
        }
        ApplicationHostnameFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk(),
            result = mockResult
        )
        verify(exactly = 1) { cleafyMock.applicationHostname }
        verify(exactly = 1) { mockResult.success(any()) }
        assertEquals(testApplicationHostname, slot.captured)
    }
}
