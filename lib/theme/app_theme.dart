import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    
    primaryColor: primary,

    // AppbBar Theme
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0
    ),

    // textButtonTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),

    // floatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // ElevateButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            shape: const StadiumBorder(),
            elevation: 0
      ),
    )

  
  );





  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    // Color primario
    primaryColor: Colors.pink,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0
    ),

    scaffoldBackgroundColor: Colors.black
  
  );
}
