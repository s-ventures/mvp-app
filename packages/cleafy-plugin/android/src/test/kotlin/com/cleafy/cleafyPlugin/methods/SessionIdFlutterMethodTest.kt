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

class SessionIdFlutterMethodTest {

    @Test
    fun `invoke calls Cleafy getSessionId and emits success result`() {
        val testSessionId = "nfGeXFBVg7eUBCWm32v9"
        val cleafyMock = mockk<CleafyProxy>() {
            every { sessionId } returns testSessionId
        }
        val slot = slot<String>()
        val mockResult = mockk<MethodChannel.Result>() {
            every { success(capture(slot)) } just runs
        }
        SessionIdFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk(),
            result = mockResult
        )
        verify(exactly = 1) { cleafyMock.sessionId }
        verify(exactly = 1) { mockResult.success(any()) }
        assertEquals(testSessionId, slot.captured)
    }
}
