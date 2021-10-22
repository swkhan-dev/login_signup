import 'package:flutter/material.dart';
import 'package:plants_app/ui/custom_widgets.dart';

enum SingingCharacter { lafayette, jefferson }

class LoginScreen extends StatefulWidget {
  static const loginScreen = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  SingingCharacter? _character = SingingCharacter.lafayette;

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
                child: Column(children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 19,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ImageIcon(
                AssetImage("images/plant.png"),
                color: Colors.white,
                size: 120,
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
                        Column(
                          children: [
                            const Text(
                              "Welcome back",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            const Text(
                              "Login to your account",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            EntryField(
                              hintText: "Email / Username",
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            EntryField(
                              hintText: "Password",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: Transform.scale(
                                        scale: 0.7,
                                        child: Radio<SingingCharacter>(
                                          fillColor: MaterialStateProperty.all(
                                              Colors.black),
                                          splashRadius: 15,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.padded,
                                          value: SingingCharacter.jefferson,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      "Remember me",
                                      style: TextStyle(
                                          color: Color(0xff036E48),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 158,
                        ),
                        Button(
                          textColor: Colors.white,
                          buttonColor: Colors.greenAccent[700],
                          text: "Login",
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                    color: Color(0xff036E48),
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: "Sign up",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]))
                      ],
                    ),
                  ),
                ),
              )
            ]))));
  }
}
