import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Owomark Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      maintainBottomViewPadding: true,
      child: WebviewScaffold(
          url: "http://owomark.com/admin/",
        primary: true,
        allowFileURLs: true,
        scrollBar: true,
        withJavascript:true,
        withLocalStorage: true,
        withLocalUrl: true,
        withZoom: true,
        withOverviewMode: false,
        enableAppScheme: true,
        useWideViewPort: true,
        mediaPlaybackRequiresUserGesture: true,
        supportMultipleWindows: true,
      ),
    );
  }
}
