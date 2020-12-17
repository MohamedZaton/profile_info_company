import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:profileapp/animation_components/fade_animation.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/models/partner.dart';
import 'package:profileapp/screens/gridpages/gridcards/partner_grid_card.dart';

class PartnerList extends StatelessWidget {
  List<Partner> items;

  PartnerList({@required this.items});
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
                child:Text(kOurPartnersTitle,style: TextStyle(color: kPrimaryColor),)
            ),
          ],
        ),

      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(top: 30, left: 10,right: 10),
        itemCount: items.length,
        crossAxisCount: 4,
        staggeredTileBuilder:(int index) =>StaggeredTile.count(2,2),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          var item = items[index];
          return FadeInAnimation(index,
              child: PartnersGridCard(item: item,));
        },
      ),

    );
  }
}
