package com.cleafy.cleafyPlugin.interop

import android.app.Application
import android.view.MotionEvent
import com.cleafy.cleafyPlugin.utils.KoverExclude
import com.cleafy.mobile.detection.agent.AgentDiagnostics
import com.cleafy.mobile.detection.agent.AgentDiagnosticsListener
import com.cleafy.mobile.detection.agent.Cleafy
import com.cleafy.mobile.detection.agent.configuration.CleafyConfiguration

@KoverExclude
internal class CleafyProxy {

    val sessionId get() = Cleafy.sessionId

    val browserId get() = Cleafy.browserId

    val parentId get() = Cleafy.parentId

    val applicationHostname get() = Cleafy.applicationHostname

    val version get() = Cleafy.version

    val httpURLConnectionFactory get() = Cleafy.httpURLConnectionFactory

    fun initWithConfiguration(
        application: Application,
        cleafyConfiguration: CleafyConfiguration
    ) {
        Cleafy.initWithConfiguration(application, cleafyConfiguration)
    }

    fun updateDetection() {
        Cleafy.updateDetection()
    }

    fun invalidateSession() {
        Cleafy.invalidateSession()
    }

    fun setLocation(location: String) {
        Cleafy.setLocation(location)
    }

    fun setUserId(userId: String) {
        Cleafy.setUserId(userId)
    }

    fun setAppSessionId(appSessionId: String) {
        Cleafy.setAppSessionId(appSessionId)
    }

    fun setAppDeviceId(appDeviceId: String) {
        Cleafy.setAppDeviceId(appDeviceId)
    }

    fun onMotionEvent(ev: MotionEvent?) {
        Cleafy.onMotionEvent(ev)
    }

    fun getDiagnostics(): AgentDiagnostics = Cleafy.getDiagnostics()

    fun registerDiagnosticListener(agentDiagnosticsListener: AgentDiagnosticsListener) = Cleafy.registerDiagnosticsListener(agentDiagnosticsListener)
}
