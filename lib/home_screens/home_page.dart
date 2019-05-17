import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  final _minPadding = 5.0;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(top: _minPadding * 5),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0),
                child: Image.asset(
                  'images/login_page.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(_minPadding * 2),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: userNameController,
                  style: TextStyle(fontFamily: 'Gotham'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter user name';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Enter user name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(_minPadding * 2),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  style: TextStyle(fontFamily: 'Gotham'),
                  obscureText: true,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Container(
                width: _minPadding * 5,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: _minPadding, top: _minPadding),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).primaryColorLight,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontFamily: 'Gotham'),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState.validate()) {
                        Navigator.of(context).pushNamed('/a');
                      }
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
