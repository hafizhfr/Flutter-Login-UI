// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Card(
                  child: new Container(
                    padding: new EdgeInsets.all(16.0),
                    child: new Column(
                      children: <Widget>[
                        new Text('Please Login'),
                        new Row(
                          children: <Widget>[
                            new Text('Username: '),
                            new Expanded(
                                child: new TextField(
                              controller: _user,
                            ))
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Text('Password: '),
                            new Expanded(
                                child: new TextField(
                              controller: _pass,
                              obscureText: true,
                            ))
                          ],
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(32.0),
                          child: new RaisedButton(
                            onPressed: () => print('Login ${_user.text}'),
                            child: new Text('Click me'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new Text(
                  'Registered Users',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                // new Expanded(child: new Image.asset('images/img.jpg')),
                new Expanded(
                    child: new ListView(
                      padding: EdgeInsets.all(1.0),
                      children: <Widget>[
                        new ListTile(title: new Text('User 1'),),
                        new ListTile(title: new Text('User 2'),),
                        new ListTile(title: new Text('User 3'),),
                        new ListTile(title: new Text('User 4'),),
                        new ListTile(title: new Text('User 5'),),
                        new ListTile(title: new Text('User 6'),),
                        new ListTile(title: new Text('User 7'),),
                        new ListTile(title: new Text('User 8'),),
                      ],
                    ))
              ],
            ),
          )),
    );
  }

}
