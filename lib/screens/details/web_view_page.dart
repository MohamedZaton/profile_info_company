import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:profileapp/components/webview_widget.dart';
import 'package:profileapp/models/product_model.dart';
import 'package:profileapp/utils/MyConnectivity.dart';
import '../../constants.dart';
import 'HeaderBackGround.dart';

class DetailsWebView extends StatefulWidget {
  static String id = "Details";
  final String webURL;
  final bool isAppBar;
  const DetailsWebView({Key key, this.webURL, this.isAppBar = true})
      : super(key: key);
  @override
  _DetailsWebViewState createState() => _DetailsWebViewState();
}

class _DetailsWebViewState extends State<DetailsWebView> {
  String _webURL;
  Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  get isAppBar => widget.isAppBar;

  @override
  void initState() {
    super.initState();
    _webURL = widget.webURL;
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isConnectState;
    switch (_source.keys.toList()[0]) {
      case ConnectivityResult.none:
        isConnectState = false;
        break;
      case ConnectivityResult.mobile:
        isConnectState = true;
        break;
      case ConnectivityResult.wifi:
        isConnectState = true;
    }

    return CustomWebViewWidget(
      isConnectWeb: isConnectState,
      webURL: _webURL,
      isAppBar: isAppBar,
    );
  }
}
