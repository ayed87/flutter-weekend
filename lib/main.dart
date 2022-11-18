import 'package:flutter/material.dart';
import 'screens/regestierScreen.dart';
import 'screens/welcomePage.dart';
import 'screens/loginScreen.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => WelcomePage(),
        'register page': (context) => RegesterScreen(),
        'login page': (context) => LoginScreen(),
        'home screen': (context) => HomeScreen(),
      },
      initialRoute: 'home screen',
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.brown,
          primaryColor: Color(0xFF9C7C49),
          scaffoldBackgroundColor: Color(0xFFD1A46D)),
    );
  }
}
