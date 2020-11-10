import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_exercise/common/common_sized_box.dart';
import 'package:flutter_ui_exercise/travelgram/build_image_grid.dart';

class TravelogramHomePage extends StatefulWidget {
  @override
  _TravelogramHomePageState createState() => _TravelogramHomePageState();
}

class _TravelogramHomePageState extends State<TravelogramHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.home, color: Colors.black)),
            new Tab(icon: Icon(Icons.search, color: Colors.grey)),
            new Tab(icon: Icon(Icons.graphic_eq, color: Colors.grey)),
            new Tab(icon: Icon(Icons.add_circle_outline, color: Colors.grey)),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('travelogram'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.notifications_none),
                    CommonSizedBox(5, 0),
                    InkWell(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage('assets/chris.jpg'))),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ListTile(
              leading: Icon(
                Icons.airplanemode_active,
                color: Colors.blue,
              ),
              title: Text(
                'MALDIVES TRIP 2016',
              ),
              subtitle: Text(
                'Add An Update',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('FROM THE COMMUNITY'),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          ImageGridBuild(),
        ],
      ),
    );
  }
}
