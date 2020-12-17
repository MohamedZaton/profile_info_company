import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:profileapp/animation_components/fade_animation.dart';


import '../../../constants.dart';
import '../gridcards/it_grid_card.dart';
import '../gridcards/partner_grid_card.dart';
import '../gridcards/portfolio_grid_card.dart';
import '../gridcards/solution_grid_card.dart';

class SeeGridView extends StatelessWidget {
  List<dynamic> items;
  kSectionName sectionName;
  String title;

  SeeGridView({@required this.title ,this.items, this.sectionName});

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
              child:Text('${title}',style: TextStyle(color: kPrimaryColor),)
            ),
          ],
        ),

      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(top: 30, left: 10,right: 10),
        itemCount: items.length,
        crossAxisCount: 4,
        staggeredTileBuilder:(int index) => staggeredSections(index , sectionName),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          var item = items[index];
          return FadeInAnimation(index,
              child: SelectedGridCard(sectionName, item, context));
        },
      ),
    );
  }

  Widget SelectedGridCard(kSectionName sectionName, item, BuildContext context) {
    switch (sectionName) {
      case kSectionName.its:
        {
          print("its enter ");
          return ItGridCard(item: item,);
        }
        break;
      case kSectionName.solutions:
        {
          print("solutions enter ");

          return SolutionGridCard(item: item,);
        }
        break;
      case kSectionName.portfolios:
        {
          print("portfolios enter ");

         return PortfolioGridCard(item: item,);
        }
        break;
      case kSectionName.partners:
        {
          print(" partners enter ");
          return PartnersGridCard(item: item,);
        }
        break;
    }
  }
}

StaggeredTile staggeredSections(int index ,kSectionName sectionName) {
  switch (sectionName) {
    case kSectionName.its:
      {
        print("its staggeredSection ");
        return  StaggeredTile.fit(index==0 ? 10 : 2);
      }
      break;
    case kSectionName.solutions:
      {
        print("solutions staggeredSection");

        return  StaggeredTile.fit(index==0 ? 7 : 2);
      }
      break;
    case kSectionName.portfolios:
      {
        print("portfolios staggeredSection");

        return StaggeredTile.count(2,2);
      }
      break;
    case kSectionName.partners:
      {
        print(" partners staggeredSection ");

        return StaggeredTile.count(2,2);
      }
      break;
  }
    return StaggeredTile.count(2,2);

}







