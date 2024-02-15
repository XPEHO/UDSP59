package com.xpeho.udsp59

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import android.view.WindowManager.LayoutParams

class MainActivity: FlutterActivity() {

    // Disable screenshots
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        window.addFlags(LayoutParams.FLAG_SECURE)
    }
}
