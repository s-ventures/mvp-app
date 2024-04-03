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

class UserIdFlutterMethodTest {

    @Test
    fun `invoke calls Cleafy setUserId and emits success result when argument is present`() {
        val testUserId = "nfGeXFBVg7eUBCWm32v9"
        val slot = slot<String>()
        val cleafyMock = mockk<CleafyProxy>() {
            every { setUserId(capture(slot)) } just runs
        }
        val mockResult = mockk<MethodChannel.Result>(relaxed = true)
        UserIdFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk { every { arguments<String>() } returns testUserId },
            result = mockResult
        )
        verify(exactly = 1) { cleafyMock.setUserId(any()) }
        assertEquals(testUserId, slot.captured)
        verify(exactly = 1) { mockResult.success(any()) }
    }

    @Test
    fun `invoke does not call Cleafy setUserId and emits error result when argument is missing`() {
        val cleafyMock = mockk<CleafyProxy>() {
            every { setUserId(any()) } just runs
        }
        val mockResult = mockk<MethodChannel.Result>(relaxed = true)
        UserIdFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk { every { arguments<String>() } returns null },
            result = mockResult
        )
        verify(exactly = 0) { cleafyMock.setUserId(any()) }
        verify(exactly = 1) { mockResult.error(any(), any(), any()) }
    }
}
