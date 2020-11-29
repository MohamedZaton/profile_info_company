
import 'package:flutter/material.dart';
import 'package:profileapp/components/popup_img_widget.dart';

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
                width: 300.0,
                height: 210.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      onTap: () async {
        await showDialog(
            context: context,
            builder: (_) => ImageDialog(
              productUrl: item.popImgUrl,
            ));

        print("image click " + item.popImgUrl);
      },
    );
  }
}