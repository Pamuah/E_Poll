import 'package:e_polls/const/themeExtension.dart';
import 'package:flutter/material.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey[200],
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.orange,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      ExtraColors(
        adminBackground: Color(0xFFFFFFFF), // white
        adminOnBackground1: Color(0xFF4CAF50), // green
        darkGray: Color(0xFF2C2C54), // amber
        green: Color(0xFF4CAF50),
        blueGrey: Color(0xFF191970),
        golden: Color.fromARGB(255, 237, 193, 35),
      )
    ],
  );
}
