package com.cleafy.cleafyPlugin.methods

import com.cleafy.cleafyPlugin.interop.CleafyProxy
import io.mockk.every
import io.mockk.just
import io.mockk.mockk
import io.mockk.runs
import io.mockk.verify
import org.junit.Test

class OnMotionEventMethodTest {

    @Test
    fun `CleafyPlugin static method calls Cleafy onMotionEvent`() {
        val cleafyMock = mockk<CleafyProxy>() {
            every { onMotionEvent(any()) } just runs
        }
        OnMotionEventMethod(cleafyMock).invoke(mockk())
        verify(exactly = 1) { cleafyMock.onMotionEvent(any()) }
    }
}
