import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      alignment: Alignment.center,
      child: Image.asset(
        "assets/images/partner_2_cisco_bgd.png",
        fit: BoxFit.fill,

      )  ,
    );
  }
}
