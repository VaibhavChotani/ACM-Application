import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {

  static String id='welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;
//  Animation animation1;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 250).animate(controller);
    // animation1 = Tween<double>(begin: 0, end: 800).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
        if(animation.value==250) {
          Navigator.pushNamed(context, LoginScreen.id);
        }
        // The state that has changed here is the animation object’s value.
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('images/bgpage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage('images/acm_logo.png'),
              height: animation.value,
            ),
          ),
        ],
      ),
//      Center(
//            child: Image(
//              image:AssetImage('images/acm_logo.png'),
//              height: 250.0,
//            ),
//      ),
    );
  }
}
