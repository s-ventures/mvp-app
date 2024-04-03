package com.cleafy.cleafyPlugin.methods

import io.flutter.plugin.common.MethodChannel
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.verify
import org.junit.Test

class UnknownFlutterMethodTest {

    @Test
    fun `invoke emits notImplemented result`() {
        val mockResult = mockk<MethodChannel.Result>() {
            every { notImplemented() } just runs
        }
        UnknownFlutterMethod().invoke(mockk(), mockk(), mockResult)
        verify(exactly = 1) { mockResult.notImplemented() }
    }
}
