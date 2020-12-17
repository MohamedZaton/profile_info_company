import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';
import 'package:profileapp/models/manageit.dart';

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

    );
  }
}
