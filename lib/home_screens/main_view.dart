import 'package:dairyapp/home_screens/navigation_screens/chat.dart';
import 'package:dairyapp/home_screens/navigation_screens/myWallet.dart';
import 'package:dairyapp/home_screens/navigation_screens/myhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'navigation_screens/subs_screen.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  ScbsPage _subsPage;
  MyHome _myHomePage;
  MyWallet _myWallet;
  Chats _chats;

  List<Widget> pages;
  Widget currentPage;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontFamily: 'Gotham', fontSize: 13);

  @override
  void initState() {
    _subsPage = ScbsPage();
    _myHomePage = MyHome();
    _myWallet = MyWallet();
    _chats = Chats();

    pages = [_myHomePage, _subsPage, _myWallet, _chats];
    currentPage = _myHomePage;
    super.initState();
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Subscription',
    ),
    Text(
      'Index 2: My wallet',
    ),
    Text(
      'Index 2: Chat',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: optionStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text(
              'Subscription',
              style: optionStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text(
              'My wallet',
              style: optionStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text(
              'Chat',
              style: optionStyle,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.pink,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            currentPage = pages[index];
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: DataSearch(),
              );
            },
          ),
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

class DataSearch extends SearchDelegate<String> {
  final items = [
    'Milk',
    'Fruits',
    'Vegitable',
    'Bakery Products',
    'Beverages',
    'Beauty & Hygiene',
    'Pet Care',
    'Breakfast & Snacks',
    'Pooja Needs',
    'Food Grains Oils & Masalas',
    'Baby Care'
  ];
  final recentItems = ['Milk', 'Fruits', 'Vegitable'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggetionList = query.isEmpty
        ? recentItems
        : items.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.settings_input_svideo),
            title: RichText(
              text: TextSpan(
                  text: suggetionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggetionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ]),
            ),
          ),
      itemCount: suggetionList.length,
    );
  }
}
