import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardChild, this.onPress});

  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: Colors.white,
      minWidth: 100,
      height:40 ,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: RaisedButton(
        onPressed: onPress,
        child:cardChild,
      ),
    );
  }
}
