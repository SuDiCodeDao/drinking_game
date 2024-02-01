import 'package:flutter/material.dart';

class DDialogTheme {
  DDialogTheme._();
  static final DialogTheme lightDialogTheme = DialogTheme(
    backgroundColor: Colors.white,
    elevation: 24,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: const TextStyle(
      color: Colors.black87,
      fontSize: 16,
    ),
  );
  static final DialogTheme darkDialogTheme = DialogTheme(
    backgroundColor: Colors.grey[800], // Màu nền cho theme tối
    elevation: 16,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    contentTextStyle: const TextStyle(
      color: Colors.white70,
      fontSize: 14,
    ),
  );
}
