import 'package:flutter/material.dart';

class DIconButtonTheme {
  DIconButtonTheme._();
  static IconButtonThemeData lightIconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(10)),
  );

  static IconButtonThemeData darkIconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(10)),
  );
}
