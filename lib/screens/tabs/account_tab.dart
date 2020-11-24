import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/details_page.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return DetailsWebView(
      webURL: "https://www.pclink.com.eg:8444/Home",
      isAppBar: false,
    );
  }
}
