import 'package:flutter/material.dart';
import 'login_welcome.dart';
import 'login_screen.dart';
import 'login_registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
      },
    );
  }
}
