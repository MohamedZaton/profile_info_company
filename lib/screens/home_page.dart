import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profileapp/screens/tabs/account_tab.dart';

import 'package:profileapp/screens/tabs/company_tab.dart';
import 'package:profileapp/screens/tabs/contact_tab.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          centerTitle: true,

        title: Container(

          child: Image(
            image: AssetImage("images/icons/pclink_logo_name.png" ),
            width: 50.0,
            height: 50.0,
          ),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            color: kBackGroundColor ,
          ),
          child: selectTab(ScreensTab.values[_currentTab])),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Color(0xFF285D86),
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [

          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              size: 30.0,
            ),
            label: "",

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 30.0,
            ),
            label: "",
          ),

        ],
      ),
    );
  }

  Widget selectTab(name) {
    if (name == ScreensTab.home) {
      return Company();
    } else if (name == ScreensTab.contact) {
      return ContactTab();
    }
    else if (name == ScreensTab.account) {
    return AccountTab() ;
    }
    return Company();
  }
}
