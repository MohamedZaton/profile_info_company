import 'package:flutter/material.dart';
import 'package:profileapp/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
