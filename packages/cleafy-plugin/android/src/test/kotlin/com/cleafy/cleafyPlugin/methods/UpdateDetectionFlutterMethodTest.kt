package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.flutter.plugin.common.MethodChannel
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.verify
import org.junit.Test

class UpdateDetectionFlutterMethodTest {

    @Test
    fun `invoke calls Cleafy updateDetection and emits success result`() {
        val cleafyMock = mockk<CleafyProxy>() {
            every { updateDetection() } just runs
        }
        val mockResult = mockk<MethodChannel.Result>() {
            every { success(any()) } just runs
        }
        UpdateDetectionFlutterMethod(cleafyMock).invoke(
            flutterPluginBinding = mockk(),
            call = mockk(),
            result = mockResult
        )
        verify(exactly = 1) { cleafyMock.updateDetection() }
        verify(exactly = 1) { mockResult.success(any()) }
    }
}
