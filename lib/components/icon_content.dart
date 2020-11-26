import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({ this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          textAlign: TextAlign.center,
          style: kLabelTextStyle,
        ) ,
      ],
    );
  }
}
