import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/travel_app/model/recomended_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SelectedPageScreen extends StatelessWidget {
  final _pageController = PageController();
  final RecommendedModel recommendedModel;

  SelectedPageScreen({Key key, @required this.recommendedModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendedModel.images.length,
                    (index) =>
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  recommendedModel.images[index]))),
                    ),
              ),
            ),
            Column(
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 57.6,
                        height: 57.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0)),
                        child: Icon(
                          Icons.arrow_back,
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
                          Icons.location_city,
                          color: Colors.blueGrey,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SmoothPageIndicator(
                        count: recommendedModel.images.length,
                        controller: _pageController,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.white,
                          dotColor: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        recommendedModel.name,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        recommendedModel.description,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Start From"),
                              Text(
                                "Start From",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          RaisedButton(
                            onPressed: (null),
                            color: Colors.grey,
                            child: Text(
                              "Explore Now >>",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],),

          ],
        ),
      ),
    );
  }
}
