import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/screens/details/details_page.dart';

class ManageItCard extends StatelessWidget {
  String imageUrl ;
  String webUrl ;
  String title ;
  ManageItCard({Key key ,this.title ,this.imageUrl, this.webUrl}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 200.0,
        height: 300.0,
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage(imageUrl),
                      width: 200.0,
                      height: 70.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 0.5,
                            offset: Offset(0.0, 0.75))
                      ]
                  ),
                ),
                SizedBox(height: 7,),
                Text(title ,style: TextStyle(color: kStartCyanColor),),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsWebView(
                webURL: webUrl,
              ),),
        );
      },
    );
  }
}
