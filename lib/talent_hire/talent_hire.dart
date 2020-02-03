import 'package:flutter/material.dart';

class TalentHire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        centerTitle: true,
        title: FlutterLogo(
          colors: Colors.green,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings, color: Colors.grey),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 100,
            child: Text("Get Coaching"),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Your Balance",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      Text(
                        "Your Balance",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.green),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.white]),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(blurRadius: 2.0, color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Coach",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "My Pass Session",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: <Widget>[
              _buildItem("Alex", "Active", 1),
              _buildItem("Alex", "Away", 2),
              _buildItem("Alex", "Active", 3),
              _buildItem("Alex", "Away", 4),
              _buildItem("Alex", "Away", 5),
              _buildItem("Alex", "Away", 6),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem(String name, String status, int index) {
    return Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://homepages.cae.wisc.edu/~ece533/images/airplane.png")),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    '$name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$status',
                    style: TextStyle(
                        color: status == 'Away' ? Colors.grey : Colors.green),
                  ),
                  Text(
                    'Hour',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Container(
                      height: 40,
                      width: 200,
                      child: RaisedButton(
                        color:
                            status == 'Away' ? Colors.grey[400] : Colors.green,
                        child: Text(
                          '$status',
                          style: TextStyle(
                            color:
                                status == 'Away' ? Colors.grey : Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        margin: index.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0));
  }
}
