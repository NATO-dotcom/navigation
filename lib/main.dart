import 'package:flutter/material.dart';
import 'package:navigation/nav/home_nav.dart';
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Welcome(),
      //declaring the routes e.g navigating to home screen
      routes: {
        "/home":(context) => HomeScreen(),
        "/nav":(context) => HomeNav()
      },
    );
  }
}
