import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/onlineshop/model/productslist.dart';
import 'package:flutter_ui_exercise/onlineshop/screen/detail/details_page.dart';

import '../../constants.dart';
import 'item_card.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int _selectedIndex = 0;
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {
        _selectedIndex = tabController.index;
      });
      print("Selected Index: " + tabController.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(text: "Hand Bag"),
            Tab(text: "Jewellery"),
            Tab(text: "Footwear"),
            Tab(text: "Dresses"),
          ],
          controller: tabController,
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            handmadeCard(),
            jewelCard(),
            handmadeCard(),
            handmadeCard(),
          ]),
        ),
      ],
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              height: 2,
              width: 50,
              color:
                  _selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  Widget handmadeCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin, vertical: kDefaultPaddin),
      child: GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: handmadeProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(
                product: handmadeProducts[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(handmadeProducts[index]))),
              )),
    );
  }

  Widget jewelCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin, vertical: kDefaultPaddin),
      child: GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: jewelProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(
                product: jewelProducts[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(jewelProducts[index]))),
              )),
    );
  }
}
