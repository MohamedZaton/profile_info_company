import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profileapp/models/service.dart';
import 'package:profileapp/screens/gridpages/gridcards/solution_grid_card.dart';

import '../../../../constants.dart';

class BusinessList extends StatelessWidget {
  List<BusinessService> items;

  BusinessList({@required this.items});
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
                SolutionGridCard(item: items[index],),
                SizedBox(height: 10,)
              ],
            );

            },),
      ),

    );
  }
}
