import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/models/portfolio.dart';

class PortfolioList extends StatelessWidget {
  List<Portfolio> items;

  PortfolioList({@required this.items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: kPrimaryColor),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child:Text(kPortfolioTitle,style: TextStyle(color: kPrimaryColor),)
            ),
          ],
        ),

      ),

    );
  }
}
