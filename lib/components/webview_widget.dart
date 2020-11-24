import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import '../constants.dart';

class CustomWebViewWidget extends StatelessWidget {
  final bool isConnectWeb;
  final String webURL;
  final bool isAppBar;
  const CustomWebViewWidget(
      {Key key,
      @required this.isConnectWeb,
      @required this.webURL, this.isAppBar = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    print("click_web_view : "+ webURL ) ;
    Size size = MediaQuery.of(context).size;
    if (isConnectWeb) {
      return WebviewScaffold(
        appBar: isAppBar
            ? AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: kPrimaryColor),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Container(
                  child: Image(
                    image: AssetImage("images/icons/pclink_logo_name.png"),
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                centerTitle: true,
              )
            : AppBar(
                backgroundColor: Colors.white,
              ),
        ignoreSSLErrors: true,
        url: webURL,
        initialChild: Container(
          color: kBackGroundColor,
          child: Center(
              child: SpinKitCubeGrid(
            color: kPrimaryColor,
          )),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage("images/icons/disconnected.png"),
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Center(child: Text("Connecting network")),
              ],
            ),
          ),
        ),
      );
    }
  }
}
