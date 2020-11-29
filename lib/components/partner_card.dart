import 'package:flutter/material.dart';
import 'package:profileapp/models/partner.dart';
import 'package:profileapp/screens/details/web_view_page.dart';

class PartnerCard extends StatelessWidget {
  PartnerCard({  Key key ,@required this.partner}) : super(key: key);
  Partner partner ;
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
              border: Border.all(color: Colors.cyan) ,
            ),
            child: Stack(
              children: <Widget>[
                GestureDetector(

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),

                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Image(

                        image: AssetImage(partner.imageUrl),

                        height: 100.0,
                        width: 120.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsWebView(webURL: partner.webUrl,)),
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
