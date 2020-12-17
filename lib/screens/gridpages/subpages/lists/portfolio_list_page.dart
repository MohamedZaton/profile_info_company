import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/models/portfolio.dart';
import 'package:profileapp/screens/gridpages/gridcards/portfolio_grid_card.dart';

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
                child:Text(kBusinessTitle,style: TextStyle(color: kPrimaryColor),)
            ),
          ],
        ),

      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: items.length,

          itemBuilder: (BuildContext context, int index) {

            return Column(
              children: [
                PortfolioGridCard(item: items[index],),
                SizedBox(height: 10,)
              ],
            );

          },),
      ),

    );
  }
}
