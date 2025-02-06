package com.Codgramer.musicmynd

import android.os.Bundle
import android.util.Log
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Suppress MESA logs when the app is not in DEBUG mode
        if (!BuildConfig.DEBUG) {
            Log.isLoggable("MESA", Log.ERROR)  // Change the log level if necessary
        }
    }
}
