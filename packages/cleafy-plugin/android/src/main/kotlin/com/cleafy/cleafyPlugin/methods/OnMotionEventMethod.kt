package com.cleafy.cleafyPlugin.methods

import android.view.MotionEvent
import com.cleafy.cleafyPlugin.interop.CleafyProxy

internal class OnMotionEventMethod(private val cleafy: CleafyProxy) {

    fun invoke(ev: MotionEvent?) {
        cleafy.onMotionEvent(ev)
    }
}