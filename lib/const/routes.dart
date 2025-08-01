import 'package:e_polls/Poll%20Analytics/adminHomePage.dart';
import 'package:e_polls/Poll%20Analytics/adminPollDetails.dart';
import 'package:e_polls/Poll%20Analytics/revenueSummary.dart';
import 'package:e_polls/Screens/Login.dart';
import 'package:e_polls/Screens/homepage.dart';
import 'package:e_polls/Screens/info_poll1.dart';
import 'package:e_polls/Screens/landing.dart';

import 'package:flutter/material.dart';
import 'package:e_polls/Screens/info_poll2.dart';
import '../Screens/sign_Up.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return {
      LandingPage.routeName: (context) => const LandingPage(),
      SignUpPage.routeName: (context) => const SignUpPage(),
      InfoPoll1.routeName: (context) => const InfoPoll1(),
      LoginPage.routeName: (context) => const LoginPage(),
      InfoPoll2.routeName: (context) => const InfoPoll2(),
      AdminsHomePage.routeName: (context) => const AdminsHomePage(),
      AdminPollDetails.routeName: (context) => const AdminPollDetails(),
      RevenueSummaryPage.routeName: (context) => const RevenueSummaryPage(),
      HomePage.routeName: (context) => const HomePage(),
    };
  }
}
