import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/onlineshop/model/productslist.dart';
import 'package:flutter_ui_exercise/onlineshop/screen/detail/details_page.dart';

import '../../constants.dart';
import 'categories.dart';
import 'item_card.dart';

class OnelineShopHomeScreen extends StatefulWidget {
  @override
  _OnelineShopHomeScreenState createState() => _OnelineShopHomeScreenState();
}

class _OnelineShopHomeScreenState extends State<OnelineShopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.account_circle, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Shopping",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(child: Categories()),
        ],
      ),
    );
  }
}
