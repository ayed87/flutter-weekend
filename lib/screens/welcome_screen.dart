import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   controller =
  //       AnimationController(duration: Duration(seconds: 1), vsync: this);
  //   animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
  //       .animate(controller!);
  //   controller!.forward();
  //   controller!.addListener(() {
  //     setState(() {});
  //     print(animation!.value);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                TyperAnimatedTextKit(
                  text: ['Welcome to Saudi Arabia'],
                  textAlign: TextAlign.right,
                  speed: Duration(milliseconds: 200),
                  textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Color(0xFF9C7C49),
              title: 'Log in',
              onperss: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              color: Colors.brown.shade200,
              title: 'Register',
              onperss: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
