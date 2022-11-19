import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AbrAPP());
}

class AbrAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: Color(0xFF9C7C49),
        scaffoldBackgroundColor: Color(0xFFD1A46D),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color(0xFFD1A46D),
          filled: true,
        ),
      ),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        homeScreen.id: (context) => homeScreen(),
      },
    );
  }
}
