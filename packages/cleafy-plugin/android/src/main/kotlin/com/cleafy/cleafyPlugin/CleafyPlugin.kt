package com.cleafy.cleafyPlugin

import android.view.MotionEvent
import com.cleafy.cleafyPlugin.interop.CleafyProxy
import com.cleafy.cleafyPlugin.methods.CleafyMethodCallHandler
import com.cleafy.cleafyPlugin.methods.OnMotionEventMethod
import com.cleafy.cleafyPlugin.utils.KoverExclude
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel

/** CleafyPlugin */
@KoverExclude
class CleafyPlugin : FlutterPlugin {

    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "MainChannel")
        channel.setMethodCallHandler(CleafyMethodCallHandler(flutterPluginBinding))
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    companion object {
        @JvmStatic
        fun onMotionEvent(ev: MotionEvent?) {
            OnMotionEventMethod(CleafyProxy()).invoke(ev)
        }
    }
}
