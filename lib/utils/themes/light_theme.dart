import 'package:flutter/material.dart';

// color
const colorPrimary = Colors.deepPurpleAccent;
const colorSecondary = Color(0xFFFFFFFF);
final colorGrey = Colors.black.withOpacity(0.5);
final colorGrey2 = Colors.grey.withOpacity(0.5);

// button
const buttonHeight = 50.0;
const buttonElevation = 0.0;

// input
const inputFillColor = Colors.white;

//misc
final borderRadius = BorderRadius.circular(10);
final scaffoldBackgroundColor = Colors.black.withOpacity(0.04);

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light().copyWith(
    primary: colorPrimary,
    secondary: colorSecondary,
  ),
  /** APPBAR **/
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: colorPrimary),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
  /** BUTTON **/
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
      ),
      fixedSize: const Size.fromHeight(buttonHeight),
    ).copyWith(
      elevation: ButtonStyleButton.allOrNull(buttonElevation),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      fixedSize: const Size.fromHeight(buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const BeveledRectangleBorder(),
      splashFactory: NoSplash.splashFactory,
    ),
  ),

  /** INPUT **/
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: borderRadius,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: colorPrimary,
        width: 2.0,
      ),
      borderRadius: borderRadius,
    ),
    filled: true,
    fillColor: inputFillColor,
  ),
  /** TEXT **/
  textTheme: const TextTheme(
    headlineMedium: TextStyle(color: Colors.black),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
    backgroundColor: Colors.white,
    elevation: 10,
    showUnselectedLabels: true,
    selectedItemColor: colorPrimary,
    unselectedItemColor: Colors.black.withOpacity(0.5),
    selectedLabelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
    unselectedLabelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
    landscapeLayout: BottomNavigationBarLandscapeLayout.centered
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.label,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(width: 4.0, color: colorPrimary),
    ),
    labelColor: Colors.black,
    labelStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelColor: colorGrey2,
    unselectedLabelStyle:
    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    splashFactory: NoSplash.splashFactory,
    overlayColor: MaterialStateColor.resolveWith((states) => Colors.white),
  ),
);