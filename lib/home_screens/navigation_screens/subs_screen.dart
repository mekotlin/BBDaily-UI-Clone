import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScbsPage extends StatefulWidget {
  @override
  _ScbsPageState createState() => _ScbsPageState();
}

class _ScbsPageState extends State<ScbsPage> {
  TextStyle textStyle = TextStyle(fontFamily: 'Gotham', fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You don\'t have any active subscriptions',
            style: textStyle,
          ),
          Image.asset(
            'images/subs_img.jpg',
            height: 200,
            width: 200,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.pink,
              child: Text(
                "START SHOPPING",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Gotham', fontSize: 15.0),
              ),
            ),
          )
        ],
      )),
    );
  }
}
