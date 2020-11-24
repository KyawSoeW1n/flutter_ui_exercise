import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        currentIndex: _selectIndex,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: "Today",
              icon: _selectIndex == 0
                  ? Icon(
                      Icons.home,
                      color: Colors.blue,
                    )
                  : Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Account",
              icon: _selectIndex == 1
                  ? Icon(
                      Icons.add_location,
                      color: Colors.blue,
                    )
                  : Icon(Icons.add_location)),
          BottomNavigationBarItem(
              label: "Account",
              icon: _selectIndex == 2
                  ? Icon(
                      Icons.add_outlined,
                      color: Colors.blue,
                    )
                  : Icon(Icons.add_outlined)),
          BottomNavigationBarItem(
              label: "Ballot",
              icon: _selectIndex == 3
                  ? Icon(
                      Icons.notification_important,
                      color: Colors.blue,
                    )
                  : Icon(Icons.notification_important)),
          BottomNavigationBarItem(
              label: "Print",
              icon: _selectIndex == 4
                  ? Icon(Icons.person, color: Colors.blue)
                  : Icon(Icons.person)),
        ],
      ),
      height: 86,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 2,
            offset: Offset(0, 5),
            blurRadius: 10)
      ]),
    );
  }
}
