import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF005277);
const KLogCardColor = Color(0xFFE3E6EC);
const KDropBoxTwoShadowColor = Color(0xFFD1D9E6);
const kStartCyanColor = Color(0xFF17b1f5);
const kEndCyanColor = Color(0xFF18e2fc);
const kBackGroundColor = Color(0xFFe9f5fe);
const kSubHeadColor = Color(0xFF707070);
const kSeeMoreColor = Color(0xFF757070);

const String kLogoHeroTag = "tag_logo_hero";

const kTitleTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.black,
  fontWeight: FontWeight.bold,
  letterSpacing: 0.5,
);
const kSponDetailsStyle = TextStyle(
  fontSize: 10.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const kServicesDetailsStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.blueGrey,
);

const kLabelTextStyle = TextStyle(
  fontSize: 15.0,
  color: kStartCyanColor,
);

enum ScreensTab {
  home,
  log ,
  account,
  location,
}

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;
enum kSectionName { its, solutions, portfolios, partners }
const List<Color> kGoldColorList = [
  Color(0XFFF9F295),
  Color(0XFFE0AA3E),
  Color(0XFFE0AA3E),
  Color(0XFFB88A44)
];
const List<Color> kPremierColorList = [Color(0XFF026B9A), Color(0XFF3BBCE9)];

const String kContactusLink = "https://www.pclink.com.eg/contact-us/";
