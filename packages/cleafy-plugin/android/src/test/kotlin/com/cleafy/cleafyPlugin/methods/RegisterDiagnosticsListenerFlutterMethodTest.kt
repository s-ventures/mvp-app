package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.verify
import org.junit.Test

class RegisterDiagnosticsListenerFlutterMethodTest {

    @Test
    fun `CleafyPlugin static method calls Cleafy registerDiagnosticListener`() {
        val mockCleafyProxy = mockk<CleafyProxy> {
            every { registerDiagnosticListener(any()) } just runs
        }

        RegisterDiagnosticsListenerFlutterMethod(mockCleafyProxy, mockk(relaxed = true)).invoke(
            flutterPluginBinding = mockk(),
            call = mockk(),
            result = mockk()
        )

        verify(exactly = 1) { mockCleafyProxy.registerDiagnosticListener(any()) }
    }
}
