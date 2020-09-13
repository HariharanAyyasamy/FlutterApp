import 'dart:developer';
//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

int _selectedIndex = 0;
const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Business',
        style: optionStyle,
      ),
      ButtonBar(children: <Widget>[
        Center(
          child: FlatButton(
              child: Text('Ok'),
              color: Colors.blue,
              onPressed: () => {
                    setState(() {
                      _selectedIndex = 0;
                    })
                  }),
        ),
      ]),
    ];
    void _onItemTapped(int index) {
      log("tapped");
      setState(() {
        _selectedIndex = index;
      });
    }

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  // @override
  // State<StatefulWidget> createState() {

  //   throw UnimplementedError();
  // }
}
