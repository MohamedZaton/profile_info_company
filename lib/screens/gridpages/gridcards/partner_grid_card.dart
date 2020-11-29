import 'package:flutter/material.dart';
import 'package:profileapp/screens/details/web_view_page.dart';
import 'package:profileapp/utils/screens.dart';

class PartnersGridCard extends StatelessWidget {
  var item ;
  PartnersGridCard({
    this.item,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            child:Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
                border: Border.all(color:Colors.cyan),),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Image(
                          image: AssetImage(item.imageUrl),
                          height: ScreenMobile.heigth(context)*0.30,
                          width:  ScreenMobile.width(context)*0.30,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsWebView(webURL: item.webUrl,)),
                      );
                    },
                  ),
                ],
              ),
            )

        ),
      ],
    );
  }
}