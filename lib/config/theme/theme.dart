import 'package:drinking_game/config/theme/custom_themes/dialog_theme.dart';
import 'package:drinking_game/config/theme/custom_themes/icon_button_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/card_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class DAppTheme {
  DAppTheme._();

  static ThemeData _baseTheme(
      {required Brightness brightness,
      required Color primaryColor,
      required Color scaffoldBackgroundColor,
      required TextTheme textTheme,
      required AppBarTheme appBarTheme,
      required ElevatedButtonThemeData elevationButtonTheme,
      required InputDecorationTheme inputDecorationTheme,
      required CardTheme cardTheme,
      required DialogTheme dialogTheme,
      required IconButtonThemeData iconButtonTheme}) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: brightness,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      elevatedButtonTheme: elevationButtonTheme,
      inputDecorationTheme: inputDecorationTheme,
      cardTheme: cardTheme,
      dialogTheme: dialogTheme,
      iconButtonTheme: iconButtonTheme,
    );
  }

  static final ThemeData lightTheme = _baseTheme(
    brightness: Brightness.light,
    primaryColor: Colors.deepOrange,
    appBarTheme: DAppbarTheme.lightAppbarTheme,
    scaffoldBackgroundColor: Colors.deepPurpleAccent,
    textTheme: DTextTheme.lightTextTheme,
    inputDecorationTheme: DTextFieldTheme.lightInputDecorationTheme,
    elevationButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
    cardTheme: DCardTheme.lightCardTheme,
    dialogTheme: DDialogTheme.lightDialogTheme,
    iconButtonTheme: DIconButtonTheme.lightIconButtonTheme,
  );

  static final ThemeData darkTheme = _baseTheme(
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    elevationButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: DAppbarTheme.darkAppbarTheme,
    scaffoldBackgroundColor: Colors.black,
    textTheme: DTextTheme.darkTextTheme,
    inputDecorationTheme: DTextFieldTheme.darkInputDecorationTheme,
    cardTheme: DCardTheme.darkCardTheme,
    dialogTheme: DDialogTheme.darkDialogTheme,
    iconButtonTheme: DIconButtonTheme.darkIconButtonTheme,
  );
}
