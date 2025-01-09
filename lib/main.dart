import 'package:e_polls/Screens/landing.dart';
import 'package:e_polls/const/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: LandingPage.routeName,
      home: const LandingPage(),
    );
  }
}
