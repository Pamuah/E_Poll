import 'package:flutter/material.dart';

@immutable
class ExtraColors extends ThemeExtension<ExtraColors> {
  final Color adminBackground;
  final Color adminOnBackground1;
  final Color darkGray;
  final Color green;
  final Color blueGrey;
  final Color golden;

  const ExtraColors({
    required this.adminBackground,
    required this.adminOnBackground1,
    required this.darkGray,
    required this.green,
    required this.blueGrey,
    required this.golden,
  });

  @override
  ExtraColors copyWith({Color? adminBackground, Color? adminOnBackground1}) {
    return ExtraColors(
      adminBackground: adminBackground ?? this.adminBackground,
      adminOnBackground1: adminOnBackground1 ?? this.adminOnBackground1,
      darkGray: darkGray,
      green: green,
      blueGrey: blueGrey,
      golden: golden,
    );
  }

  @override
  ExtraColors lerp(ThemeExtension<ExtraColors>? other, double t) {
    if (other is! ExtraColors) return this;
    return ExtraColors(
      adminBackground: Color.lerp(adminBackground, other.adminBackground, t)!,
      adminOnBackground1:
          Color.lerp(adminOnBackground1, other.adminOnBackground1, t)!,
      darkGray: darkGray,
      green: green,
      blueGrey: blueGrey,
      golden: golden,
    );
  }
}
