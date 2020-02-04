import 'package:flutter/material.dart';

class ImageGridBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              height: 225.0,
              width: MediaQuery.of(context).size.width / 2 + 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/beach1.jpg'),
                      fit: BoxFit.cover)),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 2 - 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/beach2.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 2 - 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/beach3.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
