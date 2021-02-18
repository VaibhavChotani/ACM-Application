import 'package:flutter/material.dart';
import 'Home.dart';

import 'Past_events.dart';
import 'inter.dart';

void main()
{
  runApp(
MyApp()
  );
}
class MyApp  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    home: MyBottomNavigationBar(),
    );
  }
}
class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex=0;
final List<Widget> _children=[
  Home(),
  PastEvents(),
  MyHomePage(),

];
void onTappedBar(int index)
{
  setState(() {
    _currentIndex=index;
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
       onTap: onTappedBar,
       currentIndex: _currentIndex,
       items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
          title: Text('Home'),
          backgroundColor: Colors.blue
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
         title: Text('Events'),
        backgroundColor: Colors.blue
         ),
        BottomNavigationBarItem(
         icon: Icon(Icons.event_available),
            title: Text('Upcoming Events'),
      backgroundColor: Colors.blue
    ),
       ],
    ),
    );
  }
}
