import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  final String productUrl;


  ImageDialog({
    Key key,
    this.productUrl,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(productUrl),
                fit: BoxFit.fill
            )
        ),
      ),
    );
  }
}