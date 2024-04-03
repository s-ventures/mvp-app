package com.cleafy.cleafyPlugin.interop

import com.cleafy.mobile.detection.agent.configuration.AutomaticUpdateAnalysis
import com.cleafy.mobile.detection.agent.configuration.CleafyConfigConstants
import com.cleafy.mobile.detection.agent.configuration.EmulatorDebugAnalysis
import com.cleafy.mobile.detection.agent.configuration.builder.CleafyConfigurationBuilder
import com.cleafy.mobile.detection.agent.configuration.builder.CleafyDetectorsConfigurationBuilder

internal object CleafyConfigurationParser {
    
    private inline fun Map<String, Any?>.useStringIfPresent(key: String, action: (String) -> Unit) {
        get(key)?.toString()?.let { action(it) }
    }

    private inline fun Map<String, Any?>.useIntIfPresent(key: String, action: (Int) -> Unit) {
        get(key)?.toString()?.toInt()?.let { action(it) }
    }

    private inline fun Map<String, Any?>.useBooleanIfPresent(key: String, action: (Boolean) -> Unit) {
        get(key)?.toString()?.toBoolean()?.let { action(it) }
    }

    fun parseFromMap(configurationMap: Map<String, Any?>) = with(configurationMap) {
        val builder = CleafyConfigurationBuilder()
        useStringIfPresent(CleafyConfigConstants.API_ENDPOINT, builder::apiEndpoint)
        useStringIfPresent(CleafyConfigConstants.APPLICATION_HOSTNAME, builder::applicationHostname)
        useBooleanIfPresent(CleafyConfigConstants.DEFAULT_ENABLED, builder::defaultEnabled)
        useIntIfPresent(CleafyConfigConstants.AUTOMATIC_UPDATE_ANALYSIS) { v ->
            AutomaticUpdateAnalysis.values().find { it.ordinal == v }?.let(builder::automaticUpdateAnalysis)
        }
        useIntIfPresent(CleafyConfigConstants.EMULATOR_DETECTION_ANALYSIS) { v ->
            EmulatorDebugAnalysis.values().find { it.ordinal == v }?.let(builder::emulatorDebugAnalysis)
        }
        useBooleanIfPresent(CleafyConfigConstants.COLLECT_SENSITIVE_IDENTIFIERS, builder::collectSensitiveIdentifiers)
        useBooleanIfPresent(CleafyConfigConstants.HASH_SENSITIVE_IDENTIFIERS, builder::hashSensitiveIdentifiers)
        useBooleanIfPresent(CleafyConfigConstants.PACKAGE_ANALYSIS_ENABLED, builder::packageAnalysisEnabled)
        useBooleanIfPresent(CleafyConfigConstants.EXTENDED_PACKAGE_INFORMATION, builder::extendedPackageInformation)
        useBooleanIfPresent(CleafyConfigConstants.ALLOW_UNTRUSTED_CERTIFICATES, builder::allowUntrustedCertificates)
        builder.detectorsConfiguration(parseCleafyDetectorsConfiguration(this)).build()
    }

    private fun parseCleafyDetectorsConfiguration(configurationMap: Map<String, Any?>) = with(configurationMap) {
        val builder = CleafyDetectorsConfigurationBuilder()
        useBooleanIfPresent(CleafyConfigConstants.HTTP_DETECTOR_ENABLED, builder::httpDetectorEnabled)
        useBooleanIfPresent(CleafyConfigConstants.CERTIFICATE_DETECTOR_ENABLED, builder::certDetectorEnabled)
        useBooleanIfPresent(CleafyConfigConstants.MONITORED_APP_ENABLED, builder::monitoredAppEnabled)
        useBooleanIfPresent(CleafyConfigConstants.ACTIVITY_DETECTOR_ENABLED, builder::activityDetectorEnabled)
        useStringIfPresent(CleafyConfigConstants.CERTIFICATE_DETECTOR_ENDPOINT, builder::certDetectorEndpoint)
        useBooleanIfPresent(
            CleafyConfigConstants.ADVANCED_CERTIFICATE_DETECTOR_ENABLED,
            builder::advancedHttpCertDetectorEnabled
        )
        useBooleanIfPresent(CleafyConfigConstants.ROOT_DETECTOR_ENABLED, builder::rootDetectorEnabled)
        useBooleanIfPresent(CleafyConfigConstants.TASK_INJECTION_ENABLED, builder::taskInjectionEnabled)
        useBooleanIfPresent(CleafyConfigConstants.MOCK_LOCATION_ENABLED, builder::mockLocationDetectorEnabled)
        useBooleanIfPresent(
            CleafyConfigConstants.ADVANCED_MOCK_LOCATION_ENABLED,
            builder::advancedMockLocationDetectorEnabled
        )
        useBooleanIfPresent(CleafyConfigConstants.ON_CALL_DETECTOR_ENABLED, builder::onCallDetectorEnabled)
        useBooleanIfPresent(CleafyConfigConstants.HUMAN_DETECTOR_ENABLED, builder::humanDetectorEnabled)
        builder.build()
    }
}
