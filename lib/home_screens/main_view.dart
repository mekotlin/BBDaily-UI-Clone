import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
}
