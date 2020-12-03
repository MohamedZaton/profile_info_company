import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/web_view_page.dart';
import 'package:profileapp/screens/home_page.dart';
import 'package:profileapp/screens/splash/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: MaterialApp(
        title: 'PcLink',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          iconTheme: IconThemeData(color: kPrimaryColor),
        ),
        home: WelcomePage(),
        initialRoute: WelcomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          WelcomePage.id: (context) => WelcomePage(),
          DetailsWebView.id: (context) => DetailsWebView(),
        },
      ),
    );
  }
}
