import 'package:e_polls/Screens/landing.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Map<String, WidgetBuilder> getRoutes() {
    return {
      LandingPage.routeName: (context) => const LandingPage(),
    };
  }
}
