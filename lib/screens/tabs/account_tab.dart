import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/web_view_page.dart';
import 'package:profileapp/servers/servers_links.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    Row accountBtn({@required name ,@required kDirectink })
    {
      return  Row(

        children: [
          SizedBox(width: 10,),
          Expanded(
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),

              ),
              color: kStartCyanColor,

              child:Text(name ,style: TextStyle(  color: Colors.white,),),

              onPressed: () {  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsWebView(webURL: kDirectink,)),
              );
              },
            ),
          ),
          SizedBox(width: 10,),
        ],
      );
    }
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            accountBtn(kDirectink:kAttendance,name: "Attendance"),
            accountBtn(kDirectink:kPickUp,name: "Pick-Up"),

            
          ],
        ),
      ),
    );




  }



}

