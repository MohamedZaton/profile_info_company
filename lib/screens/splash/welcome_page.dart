import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:profileapp/animation_components/fade_animation.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/home_page.dart';
import 'package:shimmer/shimmer.dart';

class WelcomePage extends StatefulWidget {
  static String id = "WelcomePage";
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    Timer(
      Duration(milliseconds: 2000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
    );

    return Scaffold(
      body: GestureDetector(
        child: Stack(children: [
          Container(
            child: Image(
              image: AssetImage(
                "images/backgrounds/splash_background.png",
              ),
              width: screenWidth,
              height: screenHeight,
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kStartCyanColor, kEndCyanColor])),
          ),
          FadeInAnimation(
            2 ,
            child: Center(
                child: Container(
              child: Image(
                image: AssetImage("images/icons/pclink_logo.png"),
                width: screenWidth * 0.50,
                height: screenHeight * 0.50,
              ),
            )),
          ),
        ]),
      ),
    );
  }
}

/*
AnimatedSplashScreen(
            splash: Stack(
          children: [
            Container(child: Image( image: AssetImage("images/backgrounds/splash_background.png",),
              width:screenWidth,
              height: screenHeight,
            ) ,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kStartCyanColor, kEndCyanColor])),
            ),
            Center(child: Container(child: Image(
              image:AssetImage("images/icons/pclink_logo.png"),
              width:screenWidth*0.50,
              height: screenHeight*0.50,
            ),)),
          ]
        ),
            nextScreen: HomePage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            duration: 1000,
            animationDuration: Duration(milliseconds: 1500),
            ),
 */
