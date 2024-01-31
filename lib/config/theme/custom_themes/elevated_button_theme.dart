import 'package:flutter/material.dart';

class DElevatedButtonTheme {
  DElevatedButtonTheme._();

  static ElevatedButtonThemeData _elevatedButtonStyle({
    required Color backgroundColor,
    required Color sideColor,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: BorderSide(color: sideColor),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  static final lightElevatedButtonTheme = _elevatedButtonStyle(
    backgroundColor: Colors.deepOrange,
    sideColor: Colors.deepOrange,
  );

  static final darkElevatedButtonTheme = _elevatedButtonStyle(
    backgroundColor: Colors.teal,
    sideColor: Colors.teal,
  );
}
