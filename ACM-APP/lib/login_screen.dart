import 'package:flutter/material.dart';
import 'package:flutter_app_homepage1/Home.dart';
import 'login_registration.dart';
import 'main.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation animation1;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
//    animation = Tween<double>(begin: 0, end: 250).animate(controller);
    animation1 = Tween<double>(begin: 0, end: 800).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

//  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            height: animation1.value,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bgpage22.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  decoration: BoxDecoration(),
                  child: Image(
                    image: AssetImage('images/acm_logo.png'),
                    height: 140.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.only(left:12.0,right: 12.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
//                    controller: textController,
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
                      onPressed: () => main(),




                    ),
                  ),
                ),
              ],
            ),
          ),
//            Padding(
//             padding: EdgeInsets.symmetric(horizontal:10.0,vertical: 5.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
//                crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
//                     Material(
//                      borderRadius: BorderRadius.circular(32.0),
              MaterialButton(
                elevation: 6.0,

                child: Text(
                  'SIGN UP'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                    fontSize:20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
              //),
              Container(
                //width: 900.0,
                child: Image.asset('images/bgpage21.png'),
              ),
            ],
          ),
          //),
        ],
//        overflow: Overflow.clip,
      ),
    );
  }
}
