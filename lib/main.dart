import 'package:e_polls/Poll%20Analytics/adminPollDetails.dart';
import 'package:e_polls/Poll%20Analytics/revenueSummary.dart';
import 'package:e_polls/Screens/Login.dart';
import 'package:e_polls/Screens/homepage.dart';
import 'package:e_polls/Screens/info_poll1.dart';
import 'package:e_polls/Screens/info_poll2.dart';
import 'package:e_polls/Screens/landing.dart';
import 'package:e_polls/const/routes.dart';
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
      routes: AppRoutes().getRoutes(),
      theme: themeData(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: LandingPage.routeName,
      home: const HomePage(),
    );
  }
}
