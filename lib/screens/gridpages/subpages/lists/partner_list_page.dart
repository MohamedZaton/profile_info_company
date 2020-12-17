import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/models/partner.dart';

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

    );
  }
}
