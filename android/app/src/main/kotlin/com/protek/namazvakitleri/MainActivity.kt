package com.protek.namazvakitleri

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity()

/*package com.protek.namazvakitleri

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.protek.prayertimes/assistant"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "sendAssistantResponse" -> {
                    val response = call.argument<Map<String, String>>("response")
                    // Handle sending response back to Google Assistant
                    result.success(null)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }
}
*/