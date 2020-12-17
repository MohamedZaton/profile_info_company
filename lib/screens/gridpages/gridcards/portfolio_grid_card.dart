
import 'package:flutter/material.dart';
import 'package:profileapp/components/popup_img_widget.dart';
import 'package:profileapp/screens/gridpages/subpages/portfolio_detail.dart';
import 'package:profileapp/utils/screens.dart';

class PortfolioGridCard extends StatelessWidget {
  var item ;

  PortfolioGridCard({
    this.item,

    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10.0),
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
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image(
                image: AssetImage(item.imageUrl),
                width: ScreenMobile.width(context),
                height: 210.0,
                fit: BoxFit.fill,
              ),
            ),
            Positioned.fill(
              bottom: 5.0,
              left: 5.0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(item.title,style: TextStyle(color: Colors.white ,fontSize: 12,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PortfolioDetailsPage(
               portfolio: item,
              )),
        );
      },
    );
  }
}