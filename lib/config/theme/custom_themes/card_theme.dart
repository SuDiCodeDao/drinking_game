import 'package:flutter/material.dart';

class DCardTheme {
  DCardTheme._();
  static CardTheme lightCardTheme = CardTheme(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)));
  static CardTheme darkCardTheme = CardTheme(
    elevation: 10,
    color: Colors.grey[800],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
