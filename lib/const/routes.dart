import 'package:e_polls/Screens/landing.dart';

import 'package:flutter/material.dart';

import '../Screens/sign_Up.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return {
      LandingPage.routeName: (context) => const LandingPage(),
      SignUpPage.routeName: (context) => const SignUpPage(),
    };
  }
}
