import 'package:flutter/material.dart';

class DTextTheme {
  DTextTheme._();

  static TextStyle _textStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: _textStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: _textStyle(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: _textStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: _textStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: _textStyle(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: _textStyle(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
    bodyLarge: _textStyle(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: _textStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: _textStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5)),
    labelLarge: _textStyle(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: _textStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: _textStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: _textStyle(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: _textStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: _textStyle(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: _textStyle(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: _textStyle(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
    bodyLarge: _textStyle(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: _textStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: _textStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5)),
    labelLarge: _textStyle(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: _textStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );
}
