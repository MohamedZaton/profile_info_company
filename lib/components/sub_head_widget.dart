import 'package:flutter/material.dart';
import 'package:profileapp/constants.dart';

class Subhead extends StatelessWidget {
  final String title;
  final Function onTap;

  const Subhead({Key key, @required this.title, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style:TextStyle(color:kPrimaryColor ,fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(Icons.arrow_forward , color: kStartCyanColor,)
          ),
        ],
      ),
    );
  }
}
