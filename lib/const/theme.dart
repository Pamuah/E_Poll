import 'package:flutter/material.dart';

ThemeData themeData(context) {
  return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white60,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
      ));
}
