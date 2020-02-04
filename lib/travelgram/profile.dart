import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/app_constants.dart';
import 'package:flutter_ui_exercise/common/common_sized_box.dart';

class TravelgramPage extends StatefulWidget {
  @override
  _TravelgramProfilePageState createState() => _TravelgramProfilePageState();
}

class _TravelgramProfilePageState extends State<TravelgramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
                child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(IMAGE_URL),
                      )),
                ),
                CommonSizedBox(0, 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CommonSizedBox(5, 0),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.grey,
                    ),
                  ],
                ),
                CommonSizedBox(0, 5),
                Text(
                  'San Jose, CA',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
          ),
          CommonSizedBox(0, 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '24k',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Follower')
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    '31',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Trip')
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    '21',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Bucket List')
                ],
              )
            ],
          ),
          CommonSizedBox(0, 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.category),
                CommonSizedBox(5, 0),
                Icon(Icons.list),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(16),
            elevation: 2.0,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/burger1.jpg'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Maldive - 12 Days',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Teresa Soto',
                              ),
                              CommonSizedBox(5, 0),
                              Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey),
                              ),
                              CommonSizedBox(5, 0),
                              Text(
                                '53 Photo',
                              ),
                              CommonSizedBox(5, 0),
                              Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey),
                              ),
                              CommonSizedBox(5, 0),
                              Text(
                                '2 Videos',
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.grey,
                          ),
                          CommonSizedBox(5, 0),
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.grey,
                          ),
                          CommonSizedBox(5, 0),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
