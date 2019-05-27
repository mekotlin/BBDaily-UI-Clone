import 'package:flutter/material.dart';
import 'package:dairyapp/home_screens/main_view.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  TextStyle myStyle = TextStyle(
      fontFamily: 'Gotham', fontSize: 13.0, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Orders',
            style: myStyle,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pushReplacementNamed('/a'),
          ),
        ),
        body: Center(
          child: Text(
            "My Orders",
            style: myStyle,
          ),
        ),
      ),
    );
  }
}
