import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:profileapp/animation_components/fade_animation.dart';
import 'package:profileapp/components/icon_content.dart';
import 'package:profileapp/components/partner_card.dart';
import 'package:profileapp/components/popup_img_widget.dart';
import 'package:profileapp/components/reusable_card.dart';
import 'package:profileapp/screens/details/details_page.dart';

import '../../constants.dart';

class SeeGridView extends StatelessWidget {
  List<dynamic> items;
  kSectionName sectionName;

  SeeGridView({this.items, this.sectionName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: StaggeredGridView.countBuilder(
        itemCount: items.length,
        crossAxisCount: 4,
        staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        itemBuilder: (context, index) {
          var item = items[index];
          return FadeInAnimation(index,
              child: SelectedGridCard(sectionName, item, context));
        },
      ),
    );
  }

  Widget SelectedGridCard(
      kSectionName sectionName, item, BuildContext context) {
    switch (sectionName) {
      case kSectionName.its:
        {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: 200.0,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image(
                      image: AssetImage(item.imageUrl),
                      width: 200.0,
                      height: 70.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsWebView(
                          webURL: item.webUrl,
                        )),
              );
            },
          );
        }
        break;
      case kSectionName.solutions:
        {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => DetailsWebView(
                            webURL: item.webUrl,
                          )),) ;
                      },
                child: Container(
                width: 100.0,
                height: 100.0,
                child: IconContent(
                      label: item.title,
                      ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [kStartCyanColor, kEndCyanColor])),
                ),
                ),
              ],
            ),
          );
        }
        break;
      case kSectionName.portfolios:
        {
          print("portfolios enter ");

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
        break;
      case kSectionName.partners:
        {
          return Row(
            children: [
              GestureDetector(
                  child:Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      border: Border.all(color:Colors.cyan),),
                    child: Stack(
                      children: <Widget>[
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Image(
                                image: AssetImage(item.imageUrl),
                                height: 100.0,
                                width:  120.0,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailsWebView(webURL: item.webUrl,)),
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
        break;
    }
  }
}
