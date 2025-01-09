import 'package:flutter/material.dart';

ThemeData themeData(context) {
  return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.grey[200],
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
      ));
}
