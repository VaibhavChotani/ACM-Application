import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main1()
{
  runApp(MaterialApp(

    home: Home(),
    debugShowCheckedModeBanner: false,
  )
  );
}

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(

        body: SingleChildScrollView(

          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back1.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
              ),
            ),

            child: Container(
              margin: EdgeInsets.only(top: 50, right: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                            image: DecorationImage(
                                image: AssetImage('images/acm.png'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Association for Computing Machinery", style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ],
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Advancing Computing", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                  ),),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("as a Science & Profession", style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0
                  ),),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 300.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        homeWidget(),
                        homeWidget1(),
                        homeWidget2(),
                        homeWidget(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Container(

                      child: Text("ACM CHAPTER CHITKARA UNIVERSITY"
                        ,style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100.0),
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(100.0),
                          topRight: Radius.circular(0.0),
                        ),
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                      ),
                      height: 380.0,
                      width: 349.0,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text("Chitkara University ACM Student Chapter chartered on 28 February in 2010 and the chapter commenced on March 8 in the same year. The chapter was initiated with a goal "
                            "to generate curiosity among the students for impending technologies in computer science apart from the regular course content. The chapter constantly endeavours to amplify the practical expertise of its members through expert talks, industry-oriented hands-on courses, workshops, industrial visits, quizzes and debugging and coding competitions. It is the combination of dedication, hard work and hunger for achieving perfection, along with the utmost sincerity shown by the team that makes our chapter the best. Our team is not just a team, rather we see ourselves as a family of around 800 members who are working constantly not only towards the growth of our chapter but also towards growth of inner-self and overall personality."
                          ,style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12.6,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Container(
                      child: Text("FACULTY ADVISORS"
                        ,style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      height: 40.0,
                      child: Text("We have Best Mentors who guide us at every step we take for the ACM Chapter" ,style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12.6,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
//                        Container(
//                          width: 160.0,
//                          height: 190.0,
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(50.0),
//                              bottomLeft: Radius.circular(50.0),
//                              bottomRight: Radius.circular(50.0),
//                              topRight: Radius.circular(50.0),
//                            ),
////                            image: DecorationImage(
////                                image: AssetImage('images/mam.jpg'), fit: BoxFit.cover
////                            ),
//                          ),
//                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          width: 160.0,
                          height: 190.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/Sarsv.jpg'),
                                fit: BoxFit.cover

                            ),

                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox
                    (
                    height: 10.0,
                  ),
//                  Container(
//
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.only(
//                        topLeft: Radius.circular(200.0),
//                        bottomLeft: Radius.circular(50.0),
//                        bottomRight: Radius.circular(200.0),
//                        topRight: Radius.circular(50.0),
//                      ),
//                      color: Colors.black,
//                    ),
//
//
//
//
//
//                    height: 120.0,
//                    width: 500.0,
//
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
////                        Container(
////
////                          width: 90.0,
////                          height: 60.0,
////
////                          decoration: BoxDecoration(
////
////                            image: DecorationImage(
////                              image: new NetworkImage("https://acm.chitkara.edu.in/img/portfolio/acm_1.png"),
////                              fit: BoxFit.fill,
////
////                            ),
////                          ),
////
////                        ),
////                        SizedBox
////                          (
////                          width: 40.0,
////                        ),
////                        Container(
////                          //color: Colors.blue,
////                          decoration: BoxDecoration(
////
////                            borderRadius: BorderRadius.only(
////                              topLeft: Radius.circular(60.0),
////                              bottomLeft: Radius.circular(10.0),
////                              bottomRight: Radius.circular(70.0),
////                              topRight: Radius.circular(10.0),
////                            ),
////                            color: Colors.grey,
////
////
////                          ),
////
////                         width: 150.0,
////                         child: Container(
////                           margin: new EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
////
////
////
////                           child: Text (
////                             "ABOUT event : Workshops Hackathons         Expert Talks         Fun activities    ",
////                             style: TextStyle (
////                             //  fontStyle: FontStyle.italic,
////                               fontSize: 12.6,
////                               fontWeight: FontWeight.w500,
////                               color: Colors.black87,
////                             ),
////                           ),
////
////                        ),
////                        ),
//
//                      ],
//
//
//
//
//
//
//                    ),
//
//
//                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }


  Widget homeWidget() {
    return Container(
      width: 250.0,
      height: 400.0,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: (){

            },
            child: Container(
              width: 230.0,
              height: 375.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(100.0),
                    topRight: Radius.circular(50.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('images/compute.jpg'), fit: BoxFit.cover
                  )
              ),
            ),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Compute 2018", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.white,),
                    Text("Chitkara University", style: TextStyle(
                        color: Colors.white
                    ),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget homeWidget1() {
    return Container(
      width: 250.0,
      height: 400.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 230.0,
            height: 375.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(100.0),
                  topRight: Radius.circular(50.0),
                ),
                image: DecorationImage(
                    image: AssetImage('images/coda.jpg'), fit: BoxFit.cover
                )
            ),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Codathon", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.white,),
                    Text("Chitkara University", style: TextStyle(
                        color: Colors.white
                    ),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget homeWidget2() {
    return Container(

      width: 250.0,
      height: 400.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 230.0,
            height: 375.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(100.0),
                  topRight: Radius.circular(50.0),
                ),
                image: DecorationImage(
                    image: AssetImage('images/hack02.jpg'), fit: BoxFit.cover
                )
            ),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("HackOn Workshop", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.white,),
                    Text("Chitkara University", style: TextStyle(
                        color: Colors.white
                    ),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
