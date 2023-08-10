import 'dart:ui';

import 'package:flutter/material.dart';

class Apptheme {
  Apptheme._();

  static Color _iconColor = Colors.grey;
  static const Color _lightPrimaryColor = Color(0xFF1A519E);
  static const Color _lightPrimaryVariantColor = Color(0xFF2B69C0);
  static const Color _lightSecondaryColor = Color(0xFFAB2626);
  static const Color _lightOnPrimaryColor =  Color(0xFF1A519E);


  static const Color _darkPrimaryColor = Colors.white24;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Color(0xFF1A519E);
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            color: _darkSecondaryColor,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 16),
        color: _lightPrimaryVariantColor,
        iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      ),
      colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
      ),
      hintColor: Colors.grey,
      iconTheme: IconThemeData(
        color: _iconColor,
      ),

      textTheme: _lightTextTheme,
      dividerTheme: DividerThemeData(color: Colors.black12));





  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: AppBarTheme(
        color: _darkPrimaryVariantColor,
        iconTheme: IconThemeData(color: _darkOnPrimaryColor),
      ),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
        background: Colors.white12,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _darkTextTheme,
      dividerTheme: DividerThemeData(color: Colors.black));

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkScreenHeading1TextStyle,
  );

  static final TextStyle _lightScreenHeading1TextStyle = TextStyle(
      fontSize: 26.0,
      fontWeight: FontWeight.bold,
      color: _lightOnPrimaryColor,
      fontFamily: "Roboto");

  static final TextStyle _darkScreenHeading1TextStyle =
      _lightScreenHeading1TextStyle.copyWith(color: _darkOnPrimaryColor);
}
