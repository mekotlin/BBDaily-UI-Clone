import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  TextEditingController moneyController = TextEditingController(text: '2000');
  TextStyle textStyle = TextStyle(
      fontFamily: 'Gotham',
      fontSize: 15,
      color: Colors.grey,
      fontWeight: FontWeight.normal);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/history.jpg',
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  'images/bill.jpg',
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  'images/reserve.jpg',
                  width: 90,
                  height: 90,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Center(
                child: Image.asset(
                  'images/balance.jpg',
                  height: 200,
                  width: 250,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: moneyController,
              style: TextStyle(fontFamily: 'Gotham'),
              decoration: InputDecoration(
                labelText: 'Add Money',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment(0.0, 0.0),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                    child: Text(
                      '+500',
                      style: textStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment(0.0, 0.0),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                    child: Text(
                      '+1000',
                      style: textStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment(0.0, 0.0),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                    child: Text(
                      '+2000',
                      style: textStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment(0.0, 0.0),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                    child: Text(
                      '+3000',
                      style: textStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Center(
              child: Text(
                'Recharge tip : the average monthly bill of a household is Rs.4100',
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            width: 240,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.pink,
                elevation: 10,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(7),
                ),
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gotham',
                      fontSize: 15.0),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'OR',
              style: textStyle,
            ),
          ),
          SizedBox(
            width: 240,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.white,
                elevation: 20,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(7),
                ),
                child: Text(
                  "Cash Recharge",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Gotham',
                      fontSize: 15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
