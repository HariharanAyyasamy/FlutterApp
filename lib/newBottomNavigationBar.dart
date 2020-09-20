import 'package:flutter/material.dart';

void main()
{
  runApp(App());
}

class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        title: 'My Flutter App',

        home: Home()

    );
  }
}


class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
    return _HomeState();
  }
}

const TextStyle optionStyle       = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

class _HomeState extends State<Home>
{
  int _currentIndex = 0;

  final List<Widget> _children = <Widget>[

    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];



  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),

      body: _children[_currentIndex], // new

      bottomNavigationBar: BottomNavigationBar
        (

          onTap: onTabTapped,
          currentIndex: _currentIndex,

          items:
          [
            BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home'),
            ),

            BottomNavigationBarItem(icon: new Icon(Icons.mail), title: new Text('Messages'),
            ),

            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')
            )

          ],

        ),
    );
  }
}