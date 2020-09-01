import 'package:flutter/material.dart';

class NewNavigation extends StatefulWidget {
  @override
  _NewNavigationState createState() => _NewNavigationState();
}

class _NewNavigationState extends State<NewNavigation> {
  int clicked = 0;

  final List pages = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.pink),
    Container(color: Colors.blueGrey),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 4 Navigation Bar"),
        centerTitle: true,
      ),
      body: pages[clicked],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: clicked,
        type: BottomNavigationBarType.shifting,
//        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.greenAccent,
        onTap: (index) {
          setState(() {
            clicked = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            title: Text("Explore"),
            backgroundColor: Colors.orange[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            backgroundColor: Colors.blue[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            backgroundColor: Colors.pink[800],
          ),
        ],
      ),
    );
  }
}
