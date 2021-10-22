import 'package:flutter/material.dart';
import 'package:plants_app/ui/custom_widgets.dart';
import 'package:plants_app/ui/screens/login_screen.dart';
import 'package:plants_app/ui/screens/signup_screen.dart';

class LoginSignupScreen extends StatelessWidget {
  static const loginSignupScreen = 'signup_login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/background_image.jpg')),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "The best app for your plants",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 63,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Button(
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      text: "Sign up",
                      onTap: () {
                        Navigator.pushNamed(context, SignupScreen.signupScreen);
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Button(
                      textColor: Colors.white,
                      buttonColor: Colors.greenAccent[700],
                      text: "Login",
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.loginScreen);
                      },
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
