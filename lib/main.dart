import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_app/ui/screens/login_signup_screen.dart';
import 'package:plants_app/ui/screens/login_screen.dart';
import 'package:plants_app/ui/screens/signup_screen.dart';

void main() {
  runApp(PlantApp());
}

class PlantApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      routes: {
        LoginSignupScreen.loginSignupScreen: (context) => LoginSignupScreen(),
        SignupScreen.signupScreen: (context) => SignupScreen(),
        LoginScreen.loginScreen: (context) => LoginScreen(),
      },
      initialRoute: LoginSignupScreen.loginSignupScreen,
    );
  }
}
