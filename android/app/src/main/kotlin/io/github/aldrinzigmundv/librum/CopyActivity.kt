package io.github.aldrinzigmundv.librum

import android.app.Activity
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import android.widget.Toast

class CopyActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        val quoteText = intent.getStringExtra("quote_formatted")
        if (!quoteText.isNullOrEmpty()) {
            val clipboard = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
            val clip = ClipData.newPlainText("Verse", quoteText)
            clipboard.setPrimaryClip(clip)
            Toast.makeText(this, "Verse copied to clipboard.", Toast.LENGTH_SHORT).show()
        }
        
        finish()
    }
}
