import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/burger_track/select_photo.dart';

class BurgerPage extends StatefulWidget {
  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  int photoIndex = 0;
  List<String> photoList = [
    'assets/burger1.jpg',
    'assets/burger2.jpg',
    'assets/burger3.jpg',
    'assets/burger4.jpg',
  ];

  _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  _nextImage() {
    setState(() {
      photoIndex =
          photoIndex < photoList.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 210.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(photoList[photoIndex]),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 210.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                onTap: _nextImage,
              ),
              GestureDetector(
                child: Container(
                  height: 210.0,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.transparent,
                ),
                onTap: _previousImage,
              ),
              Positioned(
                top: 180.0,
                left: 5.0,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 2.0),
                    Text(
                      '4.0',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4.0),
                    SelectedPhoto(
                        photoIndex: photoIndex, numberOfDots: photoList.length)
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'OPEN NOW UNTILL 7 P.M',
                  style: TextStyle(color: Colors.black),
                ),
                _createCommonSizeBox(0, 5),
                Text(
                  'The Cinnamon Snail',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                _createCommonSizeBox(0, 5),
                Row(
                  children: <Widget>[
                    Text('17 st & Union Sq East'),
                    _createCommonSizeBox(5, 5),
                    Icon(Icons.location_on),
                    _createCommonSizeBox(5, 5),
                    Text('400 Ft Away'),
                  ],
                ),
                _createCommonSizeBox(0, 5),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_city,
                      color: Colors.green,
                    ),
                    _createCommonSizeBox(10, 0),
                    Text(
                      'Location confirmed By 3 users today',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),

          //ListItem
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Feature Items',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  _createCommonSizeBox(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
