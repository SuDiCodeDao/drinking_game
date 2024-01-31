import 'package:flutter/material.dart';

class DTextFieldTheme {
  DTextFieldTheme._();

  static InputDecorationTheme _inputDecorationTheme({
    required int errorMaxLines,
    required Color prefixIconColor,
    required Color suffixIconColor,
    required TextStyle labelStyle,
    required TextStyle hintStyle,
    required TextStyle errorStyle,
    required TextStyle floatingLabelStyle,
    required OutlineInputBorder border,
    required OutlineInputBorder enabledBorder,
    required OutlineInputBorder focusedBorder,
    required OutlineInputBorder errorBorder,
    required OutlineInputBorder focusedErrorBorder,
  }) {
    return InputDecorationTheme(
      errorMaxLines: errorMaxLines,
      prefixIconColor: prefixIconColor,
      suffixIconColor: suffixIconColor,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      errorStyle: errorStyle,
      floatingLabelStyle: floatingLabelStyle,
      border: border,
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder,
      focusedErrorBorder: focusedErrorBorder,
    );
  }

  static final InputDecorationTheme lightInputDecorationTheme =
      _inputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
  );

  static final InputDecorationTheme darkInputDecorationTheme =
      _inputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
