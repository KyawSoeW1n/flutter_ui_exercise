import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/travel_app/bottom_navigation.dart';
import 'package:flutter_ui_exercise/travel_app/model/recomended_model.dart';
import 'package:flutter_ui_exercise/travel_app/selected_page_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TravelHomePage extends StatefulWidget {
  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  var _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              /**Toolbar
               * */
              Container(
                height: 57.6,
                margin: EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 57.6,
                      height: 57.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Icon(
                        Icons.menu,
                        color: Colors.blueGrey,
                        size: 24.0,
                      ),
                    ),
                    Container(
                      width: 57.6,
                      height: 57.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                        size: 24.0,
                      ),
                    )
                  ],
                ),
              ),

              /**Title
               * */
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Feel The Nature',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              /**TabController
               * */
              Container(
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("Recommended"),
                      ),
                      Tab(
                        child: Text("Popular"),
                      ),
                      Tab(
                        child: Text("New Destination"),
                      ),
                      Tab(
                        child: Text("Hidden Gem"),
                      )
                    ],
                  ),
                ),
              ),

              /**RecommendedSection
               * */
              Container(
                height: 200,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPageScreen(
                                recommendedModel: recommendations[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 8, right: 8, left: 0),
                        width: 300,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    recommendations[index].image))),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 19.2,
                              bottom: 19.2,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: BackdropFilter(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        recommendations[index].name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    filter: ImageFilter.blur(
                                        sigmaX: 30, sigmaY: 30),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /**Indicator
               */
              Padding(
                padding: EdgeInsets.only(left: 22, top: 8, bottom: 8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: ScrollingDotsEffect(
                      activeDotColor: Colors.blue, dotHeight: 5, dotWidth: 5),
                ),
              ),

              /**TextWidgetForPopular
               */
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Popular Categories',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Show All',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),

              /**PopularContainer
               */
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Container(
                  height: 30,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Text(recommendations[index].name,
                                        textAlign: TextAlign.center),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blueGrey),
                          ),
                        );
                      }),
                ),
              ),

              /**ListView For Popular
               */
              Padding(
                padding: EdgeInsets.only(top: 8, left: 14),
                child: Container(
                  height: 100,
                  width: 100,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Container(
                            height: 100,
                            width: 125,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        recommendations[index].image))),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
