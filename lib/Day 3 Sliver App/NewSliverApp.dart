import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text(
              "Day 3 Sliver App Bar",
              style: GoogleFonts.gelasio(
                  fontSize: 40,
                  color: Colors.yellow,
                  backgroundColor: Colors.black),
            ),
            backgroundColor: Colors.greenAccent,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.thespruce.com/thmb/jsaa79w1VWVUR1u3nQM9ZNsNmiA=/216'
                '7x1384/filters:fill(auto,1)/palm-tree-on-beach-big-579f66d35f9'
                'b589aa979d113.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 200,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.green[800]),
                Container(color: Colors.green[600]),
                Container(color: Colors.green[400]),
                Container(color: Colors.green[200]),
                Container(color: Colors.green[100]),
                Container(color: Colors.green[50]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
