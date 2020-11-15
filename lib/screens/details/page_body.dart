import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/products/Product.dart';

import 'ar_object.dart';
import 'color_and_size.dart';
import 'favorite_button.dart';
import 'description.dart';
import 'product_summary.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: defaultPadding,
                    right: defaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: defaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: defaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: defaultPadding / 2),
                      ARObject(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
