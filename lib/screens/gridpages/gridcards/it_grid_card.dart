import 'package:flutter/material.dart';
import 'package:profileapp/screens/details/web_view_page.dart';

import '../../../constants.dart';

class ItGridCard extends StatelessWidget {
  var item ;
  ItGridCard({
    this.item,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Image(
                  image: AssetImage(item.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              bottom: 5.0,
              left: 5.0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(item.title,style: TextStyle(color: Colors.white ,fontSize: 12),),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsWebView(
                webURL: item.webUrl,
              )),
        );
      },
    );
  }
}