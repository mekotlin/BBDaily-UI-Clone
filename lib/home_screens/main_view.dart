import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:transparent_image/transparent_image.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _minimumPadding = 5.0;
  var _currentIndex = 0;

  final List<Widget> _children = [];

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
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Account Clicked",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 2,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 14.0);
              }),
        ],
        title: Text(
          'Daily',
          style: TextStyle(fontFamily: 'Gotham'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.pink[400]),
            title: new Text('Home',
                style: TextStyle(
                    fontFamily: 'Gotham', fontSize: 10.0, color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.event_note, color: Colors.pink[400]),
            title: new Text('Subscription',
                style: TextStyle(
                    fontFamily: 'Gotham', fontSize: 10.0, color: Colors.black)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet, color: Colors.pink[400]),
              title: Text('My Wallet',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 10.0,
                      color: Colors.black))),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.chat,
              color: Colors.pink[400],
            ),
            title: new Text(
              'Chat',
              style: TextStyle(
                  fontFamily: 'Gotham', fontSize: 10.0, color: Colors.black),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Dnyaneshwar Dalvi',
                style: TextStyle(fontFamily: 'Gotham'),
              ),
              accountEmail: Text(
                'dnyane.dalvi@gmail.com',
                style: TextStyle(fontFamily: 'Gotham'),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'D',
                  style: TextStyle(fontFamily: 'Gotham', fontSize: 25.0),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.home),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'My Account',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.account_circle),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Notification',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.notifications_active),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Your Story',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.content_paste),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Shop By Category',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.grid_on),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Rate our App',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.star),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Need Help?',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.help_outline),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Share',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.share),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontFamily: 'Gotham', fontSize: 15.0),
              ),
              leading: Icon(Icons.input),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
