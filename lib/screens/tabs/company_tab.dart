import 'package:flutter/material.dart';
import 'package:profileapp/animation_components/side_animation.dart';
import 'package:profileapp/components/icon_content.dart';
import 'package:profileapp/components/partner_card.dart';
import 'package:profileapp/components/popup_img_widget.dart';
import 'package:profileapp/components/reusable_card.dart';
import 'package:profileapp/components/sub_head_widget.dart';
import 'package:profileapp/models/partner.dart';
import 'package:profileapp/models/portfolio.dart';
import 'package:profileapp/models/service.dart';
import 'package:profileapp/models/manageit.dart';
import 'package:profileapp/screens/details/details_page.dart';
import 'package:profileapp/screens/gridpages/see_grid_view_screen.dart';
import '../../constants.dart';

class Company extends StatefulWidget {
  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {

  }




  @override
  Widget build(BuildContext context) {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 200), curve: Curves.easeOut);

    return Container(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 5.0),
          SideInAnimation(
            2,
            child: Subhead(
              title: 'Manage Your IT',
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SeeGridView(items: MangeIT.mangeIT,sectionName:kSectionName.its)),
              );},
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 90.0,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: MangeIT.mangeIT.length,
              itemBuilder: (BuildContext context, int index) {
                MangeIT manageIT = MangeIT.mangeIT[index];
                return GestureDetector(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 200.0,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image: AssetImage(manageIT.imageUrl),
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
                                webURL: manageIT.webUrl,
                          )),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 5.0),
          SideInAnimation(
            2,
            child: Subhead(
              title: 'Business Solutions',
              onTap: () {   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SeeGridView(items: Service.services,sectionName:kSectionName.solutions)),
              );},
            ),
          ),
          SizedBox(height: 5.0),
          SideInAnimation(
            2,
            child: Container(
              height: 80.0,
              color: kBackGroundColor,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Service.services.length,
                itemBuilder: (BuildContext context, int index) {
                  Service service = Service.services[index];
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: Stack(
                      children: <Widget>[
                        ReusableCard(
                          cardChild: IconContent(
                            label: service.title,
                          ),
                          onPress: () {
                            print("Solutions onPress : "+ service.webUrl);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsWebView(
                                    webURL: service.webUrl,
                                  ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 5.0),
          SideInAnimation(
            2,
            child: Subhead(
              title: 'Portfolio',
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SeeGridView(items: Portfolio.portfolios,sectionName:kSectionName.portfolios)),
              );},
            ),
          ),
          SizedBox(height: 5.0),
          Expanded(
            child: SideInAnimation(
              2,
              child: Container(
                height: 220.0,
                color: kBackGroundColor,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Portfolio.portfolios.length,
                  itemBuilder: (BuildContext context, int index) {
                    Portfolio portfolio = Portfolio.portfolios[index];
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
                                image: AssetImage(portfolio.imageUrl),
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
                                  productUrl: portfolio.popImgUrl,
                                ));
                        print("image click " + portfolio.popImgUrl);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          SideInAnimation(
            2,
            child: Subhead(
              title: 'Our Partners',
              onTap: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SeeGridView(items: Partner.partners,sectionName:kSectionName.partners)),
              );},
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 100.0,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Partner.partners.length,
              itemBuilder: (BuildContext context, int index) {
                Partner partner = Partner.partners[index];
                return PartnerCard(
                  partner: partner,
                );
              },
            ),
          ),
        ],
      ),
    );
  }


}
