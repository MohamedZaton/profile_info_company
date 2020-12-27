import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/web_view_page.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsWebView(
        webURL: "https://204.15.178.113:8444/Login",
        isAppBar: false,
      ),
    );
  }
}
