import 'package:flutter/material.dart';

class NewDrawer extends StatefulWidget {
  @override
  _NewDrawerState createState() => _NewDrawerState();
}

class _NewDrawerState extends State<NewDrawer> {
  int onClick = 0;

  final List pages = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.orange),
    Container(color: Colors.brown),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 5 Drawer"),
        centerTitle: true,
      ),
      body: pages[onClick],
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Red"),
              onTap: () {
                setState(() {
                  onClick = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text("Green"),
              onTap: () {
                setState(() {
                  onClick = 1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text("Orange"),
              onTap: () {
                setState(() {
                  onClick = 2;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text("Brown"),
              onTap: () {
                setState(() {
                  onClick = 3;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
