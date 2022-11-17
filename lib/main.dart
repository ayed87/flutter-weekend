import 'package:flutter/material.dart';
import 'pages/regestierScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        routes: {'RegesterPage':(context) => RegesterScreen()},
        initialRoute: 'RegesterPage',
        title: 'Flutter Demo',
        theme:
            ThemeData(primarySwatch: Colors.brown, primaryColor: Colors.brown),
        home: RegesterScreen());
  }
}
