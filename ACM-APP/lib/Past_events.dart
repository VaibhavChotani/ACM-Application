import 'package:flutter/material.dart';
import 'events_info.dart';
import 'info.dart';
import 'conference.dart';
import 'workshop.dart';

class PastEvents extends StatefulWidget {
  @override
  _PastEventsState createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  PageController _pageController;
  PageController _pageController1;
  PageController _pageController2;



  @override
  void initState() {
    super.initState ();
    _pageController = PageController (initialPage: 0, viewportFraction: 0.8);
    _pageController1 = PageController (initialPage: 0, viewportFraction: 0.8);
    _pageController2 = PageController (initialPage: 0, viewportFraction: 0.8);

  }


  _events(int index)
  {
    return AnimatedBuilder(
        animation: _pageController,
        builder: (BuildContext context, Widget widget) {
      double value = 1;
      if (_pageController.position.haveDimensions) {
        value = _pageController.page - index;
        value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
      }
      return Center(
        child: SizedBox(
          height: Curves.easeInOut.transform(value) * 270.0,
          width: Curves.easeInOut.transform(value) * 400.0,
          child: widget,
        ),
      );
    },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Infos(event: event[index]),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: event[index].imgUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: NetworkImage(event[index].imgUrl),
                        height: 215.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Text(
                  event[index].title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}


  _conference(int index)
  {
    return new AnimatedBuilder(
      animation: _pageController1,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController1.position.haveDimensions) {
          value = _pageController1.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return new Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Confe(conference: conference[index]),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: conference[index].imgUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: NetworkImage(conference[index].imgUrl),
                        height: 215.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Text(
                  conference[index].title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _workshop(int index)
  {
    return new AnimatedBuilder(
      animation: _pageController2,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController2.position.haveDimensions) {
          value = _pageController2.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return new Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Work(workshop: workshop[index]),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: workshop[index].imgUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: NetworkImage(workshop[index].imgUrl),
                        height: 215.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Text(
                  workshop[index].title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 0.0, left: 50.0),
              child: Row(

                children: <Widget>[
                  Icon(Icons.settings, color: Colors.black54,size: 25.0,),
                  SizedBox(width: 5.0,),
                  Text("Past Events", style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),),
                ],
              )
          ),
          Container(
            height: 280.0,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: event.length,
              itemBuilder: (BuildContext context, int index) {
                return _events(index);
                },
            ),
          ),
        Container(
          margin: EdgeInsets.only(top: 0.0, left: 50.0),
           child: Row(

              children: <Widget>[
                Icon(Icons.camera_alt, color: Colors.black54,size: 25.0,),
                SizedBox(width: 5.0,),
                Text("Conference", style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                ),),
              ],
            )
        ),
          Container(
            height: 280.0,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController1,
              itemCount: conference.length,
              itemBuilder: (BuildContext context, int index) {
                return _conference(index);
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 0.0, left: 50.0),
              child: Row(

                children: <Widget>[
                  Icon(Icons.work, color: Colors.black54,size: 25.0,),
                  SizedBox(width: 5.0,),
                  Text("Workshop", style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),),
                ],
              )
          ),
          Container(
            height: 280.0,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController2,
              itemCount: workshop.length,
              itemBuilder: (BuildContext context, int index) {
                return _workshop(index);
              },
            ),
          ),


        ],
      ),
    );
  }
}









