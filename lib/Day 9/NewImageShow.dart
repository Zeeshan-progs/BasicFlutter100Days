import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewImageShow extends StatefulWidget {
  @override
  _NewImageShowState createState() => _NewImageShowState();
}

class _NewImageShowState extends State<NewImageShow> {
  int imageIndex = 0;
  List imageList = [
    Image.network(
        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/nature-welcome-church-poster-template-4462aba18bb8695eaa7cd2ecded68fc6_screen.jpg?ts=1561468002'),
    Image.network('https://wallpaperaccess.com/full/25636.jpg'),
    Image.network(
        'https://images.wallpaperscraft.com/image/mountain_river_trees_160481_3840x2160.jpg'),
    Image.network(
        'https://c4.wallpaperflare.com/wallpaper/376/331/823/3-316-16-9-aspect-ratio-s-sfw-wallpaper-preview.jpg'),
    Image.network(
        'https://i.pinimg.com/originals/b8/94/01/b89401be81d329ecb27280e34ef49627.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Show"),
        brightness: Brightness.dark,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(milliseconds: 3000),
              scrollDirection: Axis.horizontal,
              // by default scroll direction is vertical
              disableCenter: true,
              autoPlayCurve: Curves.bounceIn,
              initialPage: 0,
              aspectRatio: 16 / 9,
            ),
            items: imageList.map(
              (imageIndex) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: imageIndex,
                  );
                });
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}

// thats is for today
// subscribe to Code With Nix for daily update
// like
// share

// subscribe

// 100daysofflutter

// 100daysofcode
// #CodeWithNix

/// thank you all
