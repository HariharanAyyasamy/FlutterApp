import 'dart:developer';
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

const TextStyle optionStyle  = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

List<Widget> noteList = [];

// final myController = TextEditingController();


buildRow()
{
    noteList.add(new TextField(
      autofocus: true,
    ));
}

class _HomeState extends State<Home>
{
  int _currentIndex = 0;

  // List<Widget> _children = <Widget>
  // [
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  onTabTapped()
  {
    setState(()
    {
      log("onTabTapped");
      buildRow();
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

         children:
         [
           Column(children: noteList),

           // Container(
           //     // alignment: Alignment.center,
           //     // height: 50,
           //     child: new Column(children: noteList),
           //
           //     // child : TextField(
           //     //
           //     //   autofocus: true,
           //     //   // controller: myController,
           //     //
           //     //  )
           //     // child : Text('My Flutter App')
           // ),

            /*Bottom Options bar*/
            Container(

                alignment: Alignment.bottomLeft,
                child: new ButtonBar(
                  mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
                  children: <Widget>
                  [
                    new RaisedButton(

                      child: new Text('Next'),
                      onPressed: onTabTapped(),

                    ),
                  ],
                ),

              ),
         ],

      ),
    );
  }
}