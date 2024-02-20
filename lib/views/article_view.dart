import 'package:flutter/material.dart';
import 'package:news_app/widgets/app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({super.key, required this.url});
  final String url;
  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  late final WebViewController controller;
  bool isLoading = true;
  @override
  void initState() {
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
          onPageFinished: (_) => setState(() {
                isLoading = false;
              })))
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.url));
    /////////////////////////////////////////////////
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //initialze the controller
    // final controller = WebViewController()
    //   ..setNavigationDelegate(NavigationDelegate(
    //       onPageFinished: (_) => setState(() {
    //             _loading = false;
    //           })))
    //   ..setJavaScriptMode(JavaScriptMode.disabled)
    //   ..loadRequest(Uri.parse(widget.url));
    ////////////////////////////////////////
    return Scaffold(
      appBar: NewsAppBar(),
      body: Stack(children: [
        WebViewWidget(controller: controller),
        if (isLoading)
          const Center(
              child: CircularProgressIndicator(
            color: Colors.orange,
          ))
      ]),
    );
  }
}
