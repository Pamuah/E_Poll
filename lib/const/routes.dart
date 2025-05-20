import 'package:e_polls/Screens/Login.dart';
import 'package:e_polls/Screens/info_poll1.dart';
import 'package:e_polls/Screens/landing.dart';

import 'package:flutter/material.dart';

import '../Screens/sign_Up.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return {
      LandingPage.routeName: (context) => const LandingPage(),
      SignUpPage.routeName: (context) => const SignUpPage(),
      InfoPoll1.routeName: (context) => const InfoPoll1(),
      LoginPage.routeName: (context) => const LoginPage(),
    };
  }
}
