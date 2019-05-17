import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

final _minimumPadding = 5.0;
  Widget imageCarousel = Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/image1.jpg'),
        AssetImage('images/image2.jpg'),
        AssetImage('images/image3.jpg'),
        AssetImage('images/image4.jpg'),
      ],
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.pink[300],
      indicatorBgPadding: 5.0,
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 3000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Container(
            width: _minimumPadding * 5,
          ),
          Padding(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: Text(
              'ADD MILK',
              style: TextStyle(fontFamily: 'Gotham', fontSize: 15),
            ),
          ),
          
        ],
      ),
    );
  }
}
