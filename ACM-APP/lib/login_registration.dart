import 'package:flutter/material.dart';


class RegistrationScreen extends StatefulWidget {

  static String id='registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;
  Animation animation1;

  @override
  void initState() {
    super.initState();


    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
//    animation = Tween<double>(begin: 0, end: 250).animate(controller);
    animation1 = Tween<double>(begin: 0, end: 0).animate(controller);
    controller.forward();
//    controller.addListener(() {
//      setState(() {
//
//      });
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //height: animation1.value,
            // alignment: AlignmentDirectional.topStart,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('images/bgpage32.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                //width: 900.0,
                child: Image.asset('images/bgpage31.png'),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top:50.0),
                  child: Image(
                    image: AssetImage('images/acm_logo.png'),
                    height: 120.0,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  padding: EdgeInsets.only(left:12.0,right: 12.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,

//                    autofocus: false,
                    // controller: textController,

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),

                      ),
                      labelText: 'Username',
                    ),
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.only(left:12.0,right: 12.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

//                    autofocus: false,
                    // controller: textController,

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),

                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.only(left:12.0,right: 12.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,

//                    autofocus: false,
                    // controller: textController,

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.confirmation_number),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),

                      ),
                      labelText: 'Roll No',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Container(
                  padding: EdgeInsets.only(left:12.0,right: 12.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,

//                    autofocus: false,
                    // controller: textController,

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),

                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
//
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 150.0,
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Colors.white,
                    child: MaterialButton(
                      elevation: 5.0,
                      child: Text(
                        'Login'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
//        overflow: Overflow.clip,
      ),
    );
  }
}
