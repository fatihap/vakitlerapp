import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ImportantLinksPage extends StatelessWidget {
  const ImportantLinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('important_links'.tr),
      ),
      body: const WebView(
        initialUrl: 'https://www.turktakvim.com/html/bilgiler.php',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
