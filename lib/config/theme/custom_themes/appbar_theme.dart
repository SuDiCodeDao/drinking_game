import 'package:flutter/material.dart';

class DAppbarTheme {
  DAppbarTheme._();

  static AppBarTheme _appbarTheme({
    required double elevation,
    required bool centerTitle,
    required double scrolledUnderElevation,
    required Color backgroundColor,
    required Color surfaceTintColor,
    required IconThemeData iconTheme,
    required IconThemeData actionsIconTheme,
    required TextStyle titleTextStyle,
  }) {
    return AppBarTheme(
      elevation: elevation,
      centerTitle: centerTitle,
      scrolledUnderElevation: scrolledUnderElevation,
      backgroundColor: backgroundColor,
      surfaceTintColor: surfaceTintColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      titleTextStyle: titleTextStyle,
    );
  }

  static final lightAppbarTheme = _appbarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.deepPurpleAccent,
    surfaceTintColor: Colors.deepPurpleAccent,
    iconTheme: const IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
  );

  static final darkAppbarTheme = _appbarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.teal,
    surfaceTintColor: Colors.teal,
    iconTheme: const IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
