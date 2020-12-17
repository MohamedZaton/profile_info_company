import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:profileapp/animation_components/fade_animation.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/models/manageit.dart';
import 'package:profileapp/screens/gridpages/gridcards/it_grid_card.dart';

class ManageList extends StatelessWidget {
  List<MangeIT> items;

  ManageList({@required this.items});
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
                child:Text(kManageTitle,style: TextStyle(color: kPrimaryColor),)
            ),
          ],
        ),

      ),
     body: StaggeredGridView.countBuilder(
    padding: EdgeInsets.only(top: 30, left: 10,right: 10),
    itemCount: items.length,
    crossAxisCount: 4,
    staggeredTileBuilder:(int index) => StaggeredTile.fit(index==0 ? 10 : 2),
    mainAxisSpacing: 5.0,
    crossAxisSpacing: 5.0,
    scrollDirection: Axis.vertical,
    physics: ScrollPhysics(),
    itemBuilder: (context, index) {
    var item = items[index];
    return FadeInAnimation(index,
    child:ItGridCard(item: item,));
    },
    ),
    );
  }

}
