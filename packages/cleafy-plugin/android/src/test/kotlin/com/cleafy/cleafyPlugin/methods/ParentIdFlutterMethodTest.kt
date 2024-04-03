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

class ParentIdFlutterMethodTest {

    @Test
    fun `invoke calls Cleafy getParentId and emits success result`() {
        val testParentId = "nfGeXFBVg7eUBCWm32v9"
        val cleafyMock = mockk<CleafyProxy>() {
            every { parentId } returns testParentId
        }
        val slot = slot<String>()
        val mockResult = mockk<MethodChannel.Result>() {
            every { success(capture(slot)) } just runs
        }
        ParentIdFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk(),
            result = mockResult
        )
        verify(exactly = 1) { cleafyMock.parentId }
        verify(exactly = 1) { mockResult.success(any()) }
        assertEquals(testParentId, slot.captured)
    }
}
