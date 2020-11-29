import 'package:flutter/material.dart';
import 'package:profileapp/components/icon_content.dart';
import 'package:profileapp/screens/details/web_view_page.dart';

import '../../../constants.dart';

class SolutionGridCard extends StatelessWidget {
  var item ;
  SolutionGridCard({
    this.item,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => DetailsWebView(
                      webURL: item.webUrl,
                    )),) ;
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              child: IconContent(
                label: item.title,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [kStartCyanColor, kEndCyanColor])),
            ),
          ),
        ],
      ),
    );
  }
}