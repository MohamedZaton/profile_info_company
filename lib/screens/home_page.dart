import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profileapp/screens/tabs/account_tab.dart';
import 'package:profileapp/screens/tabs/company_tab.dart';
import 'package:profileapp/screens/tabs/contact_tab.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'details/web_view_page.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  static String number  = "2001066279092" ;
  var whatsappUrl = "whatsapp://send?phone="+number;
  var messangerUrl = "http://m.me/67326870319";
  String messageNoWhatsapp = "There is no WhatsApp installed" ;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scaffoldBodyKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      appBar: AppBar(
        backgroundColor: Colors.white,
          centerTitle: true,

        leading: Center(
          child: GestureDetector(
              child: Wrap(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset("images/icons/menu_right_alt.svg", width: 18.0, height: 18.0,),
                    decoration: BoxDecoration(
                      color: kBackGroundColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                        )
                      ]

                    ),
                  ),
                ),

                ],
              ),
            onTap:(){
              print("Click Menu Right");
              if (_scaffoldBodyKey.currentState.isDrawerOpen == false) {
                _scaffoldBodyKey.currentState.openDrawer();
              } else {
                _scaffoldBodyKey.currentState.openEndDrawer();
              }
            },
          ),
        ), // menu right

        title: Container(
          child: Image(
            image: AssetImage("images/icons/pclink_logo_name.png" ),
            width: 50.0,
            height: 50.0,
          ),
        ),
        
        actions: [
          IconButton(icon:Center(
      child: GestureDetector(
      child: Wrap(
      children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: EdgeInsets.all(7),
                      child: SvgPicture.asset("images/icons/chat_dots.svg", width: 18.0, height: 18.0,),
                      decoration: BoxDecoration(
                          color: kBackGroundColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                            )
                          ]
                      ),
                    ),
                  ),

                ],
          ),
          onTap: () async {
          print("click menu right ");
          await canLaunch(messangerUrl) != null ? launch(messangerUrl) : _displaySnackBar(context ,messageNoWhatsapp );

          },
    ),
    ),

          ),

        ],
      ),
      body: Scaffold(
        key: _scaffoldBodyKey,
        drawer: Drawer(
          child:
          ListView(

            children: [
            SizedBox(height: 30,),
              ListTile(title: Text("Why PcLink "),onTap:()
                {
                  _scaffoldBodyKey.currentState.openEndDrawer();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsWebView(webURL: kAboutPcLinkLink,)),
                  );
                },),
              ListTile(title: Text("Contact Us "),onTap:()
              {
                _scaffoldBodyKey.currentState.openEndDrawer();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsWebView(webURL: kContactusLink,)),
                );
              },),
            ],
          ),
        ),

        body: Container(
            decoration: BoxDecoration(
              color: kBackGroundColor ,
            ),
            child: selectTab(ScreensTab.values[_currentTab])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: kPrimaryColor,
        selectedItemColor: Color(0xFF16e7ff),
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 30.0,
            ),
            label: "Log",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 30.0,
            ),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_pin,
              size: 30.0,
            ),
            label: "Location",

          ),

        ],
      ),
    );
  }

  Widget selectTab(name) {
    if (name == ScreensTab.home) {
      return Company();
    } else if (name == ScreensTab.location) {
      return LocationTab();
    }
    else if (name == ScreensTab.account) {
    return AccountTab() ;
    }
    return Company();
  }

  _displaySnackBar(BuildContext context , String messageSnackBar) {
    final snackBar = SnackBar(content: Text(messageSnackBar));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

}
