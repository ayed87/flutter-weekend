import 'package:chat_app/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool spinStatus = false;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: spinStatus,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                    //Do something with the user input.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'enter your email')),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                title: 'Log in',
                color: Color(0xFF9C7C49),
                onperss: () async {
                  try {
                    setState(() {
                      spinStatus = true;
                    });
                    final loggedInUser = await _auth.signInWithEmailAndPassword(
                        email: email!, password: password!);
                    if (loggedInUser != null) {
                      Navigator.pushNamed(context, homeScreen.id);
                    } else {
                      spinStatus = false;
                    }
                    setState(() {
                      spinStatus = false;
                    });
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      setState(() {
                        spinStatus = false;
                      });
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      setState(() {
                        spinStatus = false;
                      });
                      print('Wrong password provided for that user.');
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
