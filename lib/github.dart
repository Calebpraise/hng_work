import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Github extends StatefulWidget {
  const Github({super.key});

  @override
  State<Github> createState() => _GithubState();
}

class _GithubState extends State<Github> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/Calebpraise'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
