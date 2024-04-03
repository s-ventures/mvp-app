package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import com.cleafy.mobile.detection.agent.AgentDiagnostics
import com.cleafy.mobile.detection.agent.ProbeTrace
import io.flutter.plugin.common.MethodChannel
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.verify
import org.junit.Test

class GetDiagnosticsFlutterMethodTest {

    @Test
    fun `CleafyPlugin static method calls Cleafy getDiagnostics and returns the correct Map`() {
        class ProbeTraceImpl(
            override val eventId: String,
            override val probeType: String,
            override val sessionId: String,
            override val statusCode: Int,
            override val timestamp: Long
        ) : ProbeTrace

        val mockDiagnostics = object : AgentDiagnostics {
            override val deviceId: String = "mockDeviceId"
            override val errors: List<String> = listOf("mockError1", "mockError2")
            override val failedProbeSubmissions: Int = 0
            override val lastConfigurationUpdateTimestamp: Long = 1234
            override val probeTraces: List<ProbeTrace> = listOf(
                ProbeTraceImpl("eid1", "type1", "sid1", 200, 5678),
                ProbeTraceImpl("eid1", "type1", "sid1", 200, 5678)
            )
            override val successfulProbeSubmissions: Int = 3
        }

        val mockCleafyProxy = mockk<CleafyProxy> {
            every { getDiagnostics() } returns mockDiagnostics
        }
        val mockResult = mockk<MethodChannel.Result> {
            every { success(any()) } just runs
        }

        GetDiagnosticsFlutterMethod(mockCleafyProxy).invoke(
            flutterPluginBinding = mockk(),
            call = mockk(),
            result = mockResult
        )

        val mockMapProbeTraces = mutableListOf<HashMap<String, Any>>()
        mockDiagnostics.probeTraces.forEach {
            mockMapProbeTraces.add(
                hashMapOf(
                    "timestamp" to it.timestamp,
                    "sessionId" to it.sessionId,
                    "eventId" to it.eventId,
                    "probeType" to it.probeType,
                    "statusCode" to it.statusCode
                )
            )
        }
        val mockHashMap = hashMapOf(
            "deviceId" to mockDiagnostics.deviceId,
            "probeTraces" to mockMapProbeTraces,
            "errors" to mockDiagnostics.errors,
            "successfulProbeSubmissions" to mockDiagnostics.successfulProbeSubmissions,
            "failedProbeSubmissions" to mockDiagnostics.failedProbeSubmissions,
            "lastConfigurationUpdateTimestamp" to mockDiagnostics.lastConfigurationUpdateTimestamp
        )

        verify(exactly = 1) { mockCleafyProxy.getDiagnostics() }
        verify(exactly = 1) { mockResult.success(mockHashMap) }
    }
}
