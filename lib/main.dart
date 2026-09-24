import 'package:cashconnect_fanancial_suite/login%20and%20signup%20page/bankpage.dart';
import 'package:cashconnect_fanancial_suite/splashscreen%20page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:cashconnect_fanancial_suite/login and signup page/login_page.dart';
import 'package:cashconnect_fanancial_suite/login and signup page/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Bankpage(),
    );
  }
}
