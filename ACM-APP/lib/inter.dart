import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Center(
              child: IconButton(
                icon: Image.asset('images/eventss.jpeg'),
                iconSize: 610,
                onPressed: () => _onButtonPressed(),
              ),
            ),
//            Text(
//              _selectedItem,
//              style: TextStyle(fontSize: 30),
//            ),
          ],
        ),
      ),
    );
  }
  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 1000,
            child: Container(
              child: buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        },
        );
  }

  Column buildBottomNavigationMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          child: Text(
            "ACM STUDENT CHAPTER presents you an EXPERT TALK on INTERVIEWING SKILLS & EMERGING SKILLSETS IN THE IT INDUSTRY",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          child: Text(
            "- Presented by Mr Sumantha Guha",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Text(
            "- INTERVIEWING SKILLS & EMERGING SKILLSETS IN THE IT INDUSTRY\n"



            ,
            style: TextStyle(
                fontSize: 13
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
          child: Text(
            "Time & Venue",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "  27 May 2020 9:30AM onwards",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "For any Query, contact:",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        Container(
          height: 20,
          padding: EdgeInsets.fromLTRB(270, 0, 0, 0),
          child: RaisedButton(
            color: Colors.lightBlue,
            child: Text(
                "show"
            ),
          ),
        ),
      ],
    );
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}
