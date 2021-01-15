import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/onlineshop/model/productslist.dart';

import '../../constants.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin,horizontal: kDefaultPaddin),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: kDefaultPaddin),
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color,
                ),
              ),
              child: IconButton(
                icon:  Icon(
                  Icons.add_shopping_cart,
                  color: Colors.blue,
                  size: 36.0,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: product.color,
                  onPressed: () {},
                  child: Text(
                    "Buy  Now".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}