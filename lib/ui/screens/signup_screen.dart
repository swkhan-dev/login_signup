import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plants_app/ui/screens/login_screen.dart';
import 'package:plants_app/ui/screens/login_signup_screen.dart';
import '../custom_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupScreen extends StatelessWidget {
  static const signupScreen = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/background_image.jpg')),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: IconButton(
                      onPressed: () => Navigator.popAndPushNamed(
                          context, LoginSignupScreen.loginSignupScreen),
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Create your new account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(80))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20.0),
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          EntryField(
                            hintText: "First Name",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          EntryField(
                            hintText: "Last Name",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          EntryField(
                            hintText: "Email",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          EntryField(
                            hintText: "Password",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          EntryField(
                            hintText: "Confirm Password",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: const TextStyle(
                                      color: Color(0xff036E48),
                                      fontWeight: FontWeight.bold),
                                  text: "By signing you agree to our ",
                                  children: [
                                    TextSpan(
                                        text: "Terms of use ",
                                        style:
                                            const TextStyle(color: Colors.grey),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var url = "https://www.google.com";
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw "cannot load the page.";
                                            }
                                          }),
                                    TextSpan(text: "and "),
                                    TextSpan(
                                        text: "privacy policy.",
                                        style: TextStyle(color: Colors.grey),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var url = "https://www.google.com";
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw "cannot load the page.";
                                            }
                                          }),
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 67,
                          ),
                          Button(
                            textColor: Colors.white,
                            buttonColor: Colors.greenAccent[700],
                            text: "Signup",
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "Already have an account? ",
                                  style: const TextStyle(
                                      color: Color(0xff036E48),
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: "Login",
                                        style:
                                            const TextStyle(color: Colors.grey),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pushNamed(context,
                                                LoginScreen.loginScreen);
                                          }),
                                  ]))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
